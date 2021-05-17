--[[
HOW TO ADD KITS:

kitpvp.api.register_kit({
  name = agreatkitname,
  items = {
  	item(itemstr1, count, {enchantment1 = value, enchantment2 = value}),
	item(itemstr2, count, {enchantment1 = value, enchantment2 = value}),
	item(itemstr3, count, {enchantment1 = value, enchantment2 = value})
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

kitpvp.api.register_kit({
  name = "blaze",
  items = {
    item("mcl_tools:sword_iron", {sharpness = 1, fire_aspect = 2})
  },
  default_items = true,
  armor = "gold",
  armor_enchantments = {{fire_protection = 5}, {fire_protection = 5}, {fire_protection = 5}, {fire_protection = 5}}
})

kitpvp.api.register_kit({
  name = "elytrian",
  items = {
    item("mcl_tools:sword_iron", 1, {sharpness = 1}),
    item("mcl_armor:elytra", 1),
    item("mcl_fireworks:rocket_3", 50),
    item("mcl_core:apple_gold", 1),
    item("mcl_farming:bread", 20),
    item("mcl_bows:bow", 1),
    item("mcl_bows:arrow", 20)
  },
  default_items = true,
  armor = "leather",
  armor_enchantments = {{protection = 1}, {protection = 1}, {protection = 1}, {protection = 1}}
})
