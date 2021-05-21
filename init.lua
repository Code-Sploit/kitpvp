local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

if modpath then modpath = modpath .. "/" end

local launch = {
  "api.lua",
  "kits.lua",
  "commands.lua"
}

for _, item in pairs(launch) do
  dofile(modpath .. item)
end
