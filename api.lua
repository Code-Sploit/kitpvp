kitpvp = {
  api = {},
  kits = {}
}

function kitpvp.api.give_to_player(player, item)
  -- Values nil? If so, close this function
  if not player or not item then return end

  -- Add it
  minetest.add_item(player:get_pos(), item)
end

function kitpvp.api.kit_exists(kitname)
  return kitpvp.kits[kitname] ~= nil
end

function kitpvp.api.get_kit_definition(kitname)
  -- Just to be sure
  if not kitpvp.api.kit_exists(kitname) then return end

  return kitpvp.kits[kitname]
end

function kitpvp.api.add_enchantments(itemstring, enchantments)
  if enchantments == {} then return end

  local itemObj = ItemStack(itemstring)

  mcl_enchanting.set_enchanted_itemstring(itemObj)
  mcl_enchanting.set_enchantments(itemObj, enchantments)

  return itemObj
end

function kitpvp.api.get_item_obj(itemstring, enchantments)
  local obj = {}

  obj.itemstring = itemstring
  obj.enchantments = enchantments

  return obj
end

function kitpvp.api.register_kit(def)
  local _def = {}

  _def.name               = def.name
  _def.items              = def.items
  _def.armor              = def.armor
  _def.armor_enchantments = def.armor_enchantments
  _def.default_items      = def.default_items
  --local effects = def.effects

  -- Is $def completly filled in?
  if not _def.name or not _def.items or not _def.armor or not _def.armor_enchantments or not _def.default_items then return end

  -- Register the kit
  kitpvp.kits[_def.name] = _def
end

function kitpvp.api.get_kit_names()
  local kits = ""

  for kit in pairs(kitpvp.kits) do
    kits = kits .. kit .. ","
  end

  kits = string.sub(kits, 0, string.len(kits) - 1)

  return kits
end

function kitpvp.api.give_kit(player, kitname)
  -- Check if the kit exists
  if not kitpvp.api.kit_exists(kitname) then return end

  -- Make sure that $player != NULL
  if not player then return end

  -- Get the kit's definition
  local def = kitpvp.api.get_kit_definition(kitname)

  -- Add the things
  -- DEFAULT items
  if def.default_items then
    for i=1,64 do
      kitpvp.api.give_to_player(player, "mcl_mobitems:cooked_beef")
    end
  end

  -- ARMOR
  local components = {"helmet", "chestplate", "leggings", "boots"}

  for i, component in pairs(components) do
    local item_name = "mcl_armor:" .. component .. "_" .. def.armor
    local itemstack = ItemStack(item_name)
    local final_item

    if def.armor_enchantments then
      local index = 0

      if component == "helmet" then
        index = 0
      elseif component == "chestplate" then
        index = 1
      elseif component == "leggings" then
        index = 2
      elseif component == "boots" then
        index = 3
      end

      local enchantments = def.armor_enchantments[index]

      final_item = kitpvp.api.add_enchantments(itemstack, enchantments)
    end

    kitpvp.api.give_to_player(player, final_item)
  end

  -- ITEMS
  for _, itemobj in pairs(def.items) do
    local item = itemobj.itemstring
    local itemstack = ItemStack(item)
    local enchantments = itemobj.enchantments
    local final_item_obj

    if enchantments ~= nil then
      final_item_obj = kitpvp.api.add_enchantments(itemstack, enchantments)
    else
      final_item_obj = itemstack
    end

    kitpvp.api.give_to_player(player, final_item_obj)
  end
end
