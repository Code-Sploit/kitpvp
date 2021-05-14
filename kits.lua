--[[
HOW TO ADD KITS:

kitpvp.api.register_kit({
  name = agreatkitname,
  items = {itemstr1, itemstr2, itemstr3},
  armor = leather/chain/iron/gold/diamond/netherite
})

]]

kitpvp.api.register_kit({
  name = "tank",
  items = {"mcl_tools:sword_iron"},
  default_items = true,
  armor = "iron"
})

kitpvp.api.register_kit({
  name = "archer",
  items = {"mcl_tools:sword_stone", "mcl_bows:bow", "mcl_bows:arrow 10000"},
  default_items = true,
  armor = "gold"
})

kitpvp.api.register_kit({
  name = "speedrunner",
  items = {"mcl_tools:sword_stone", "mcl_potions:swiftness_2"},
  default_items = true,
  armor = "gold"
})
