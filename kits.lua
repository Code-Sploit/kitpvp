--[[
HOW TO ADD KITS:

kitpvp.api.register_kit({
  name = agreatkitname,
  items = {itemstr1, itemstr2, itemstr3},
  armor = leather/chain/iron/gold/diamond/netherite
})
]]

-- To make the item converter function a bit shorter
item = kitpvp.api.get_tool_obj

kitpvp.api.register_kit({
  name = "tank",
  items = {
    item("mcl_tools:sword_iron", {sharpness = 1})
  },
  default_items = true,
  armor = "iron"
})

kitpvp.api.register_kit({
  name = "archer",
  items = {
    item("mcl_tools:sword_stone", {sharpness = 1}),
    item("mcl_bows:bow", {infinity = 1}),
    item("mcl_bows:arrow 1")
  },
  default_items = true,
  armor = "gold"
})

kitpvp.api.register_kit({
  name = "speedrunner",
  items = {
    item("mcl_tools:sword_stone", {sharpness = 1}),
    item("mcl_potions:swiftness_2"),
  },
  default_items = true,
  armor = "gold"
})
