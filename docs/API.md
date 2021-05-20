# API
<!--
Remeber to add any new functionality to the API here.
-->
## How to add a new Kit
### Step 1: 
Open `kits.lua`.
### Step 2: Append this code to the end.
```lua
kitpvp.api.register_kit({
  name = "KIT_NAME",
  items = {
    item("ITEM_NAME", COUNT, {ENCHANTMENT = LEVEL, ENCHANTMENT = LEVEL}),
    item("ITEM_NAME", COUNT, {ENCHANTMENT = LEVEL, ENCHANTMENT = LEVEL}),
    item("ITEM_NAME", COUNT, {ENCHANTMENT = LEVEL, ENCHANTMENT = LEVEL})
  },
  armor = ARMOR_TYPE,
  armor_enchantments = {{HELMET_ENCHANTMENT = LEVEL}, {CHESTPLATE_ENCHANTMENT = LEVEL}, {LEGGINGS_ENCHANTMENT = LEVEL}, {BOOTS_ENCHANTMENT = LEVEL}}
})
```
Replace:
* `KIT_NAME`
* `ITEM_NAME`
* `COUNT`
* `ENCHANTMENT`
* `LEVEL`
* `ARMOR_TYPE`
* `HELMET_ENCHANTMENT`
* `CHESTPLATE_ENCHANTMENT`
* `LEGGINGS_ENCHANTMENT`
* `BOOTS_ENCHANTMENT`

with their corresponding values.
