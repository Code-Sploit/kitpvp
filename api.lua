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

function kitpvp.api.register_kit(def)
  local name   = def.name
  local items  = def.items
  local armor  = def.armor
  --local effects = def.effects

  -- Is $def completly filled in?
  if not name or not items or not armor then return end

  -- Register the kit
  kitpvp.kits[name] = def
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
    i = i + 1

    local item_name = "mcl_armor:" .. component .. "_" .. def.armor

    kitpvp.api.give_to_player(player, item_name)
  end

  -- ITEMS
  for i, item in pairs(def.items) do
    kitpvp.api.give_to_player(player, item)
  end
end
