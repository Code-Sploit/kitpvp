--[[
HOW TO ADD KITS:

kitpvp.api.register_kit({
  name = agreatkitname,
  items = {
  	item(itemstr1, {enchantment1 = value, enchantment2 = value}),
	item(itemstr2, {enchantment1 = value, enchantment2 = value}),
	item(itemstr3, {enchantment1 = value, enchantment2 = value})
  },
  armor = leather/chain/iron/gold/diamond/netherite,
  armor_enchantments = {{enchantmentsforhelmet = value}, {enchantmentsforchestplate = value}, {enchantmentsforleggings = value}, {enchantmentsforboots = value}}
})

]]

-- To make the item converter function a bit shorter
item = kitpvp.api.get_item_obj

kitpvp.api.register_kit({
  name = "tank",
  items = {
    item("mcl_tools:sword_iron", {sharpness = 1})
  },
  default_items = true,
  armor = "iron",
  armor_enchantments = {{protection = 1}, {protection = 1}, {protection = 1}, {protection = 1}}
})

kitpvp.api.register_kit({
  name = "archer",
  items = {
    item("mcl_tools:sword_stone", {sharpness = 1}),
    item("mcl_bows:bow", {infinity = 1}),
    item("mcl_bows:arrow 1")
  },
  default_items = true,
  armor = "gold",
  armor_enchantments = {{protection = 1}, {protection = 1}, {protection = 1}, {protection = 1}}
})

kitpvp.api.register_kit({
  name = "speedrunner",
  items = {
    item("mcl_tools:sword_stone", {sharpness = 1}),
    item("mcl_potions:swiftness_2"),
  },
  default_items = true,
  armor = "gold",
  armor_enchantments = {{protection = 1}, {protection = 1}, {protection = 1}, {protection = 1}}
})
