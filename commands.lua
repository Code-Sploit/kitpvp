minetest.register_chatcommand("kit", {
  description = "Gives you a kit to PvP",

  func = function(name, param)
    local player = minetest.get_player_by_name(name)

    if not player then return end

    if param == "list" then
      return false, "Available kits: " .. kitpvp.api.get_kit_names()
    else
      kitpvp.api.give_kit(player, param)
    end
  end
})
