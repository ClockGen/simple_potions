local input = io.open(minetest.get_modpath("simple_potions").."/settings.conf", "r")
if input then
	dofile(minetest.get_modpath("simple_potions").."/settings.conf")
	input:close()
	input = nil
end
dofile(minetest.get_modpath("simple_potions").."/effect_types.lua")
dofile(minetest.get_modpath("simple_potions").."/visuals.lua")
dofile(minetest.get_modpath("simple_potions").."/potions.lua")
dofile(minetest.get_modpath("simple_potions").."/crafts.lua")
