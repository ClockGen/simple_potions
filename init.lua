simple_potions_duration = minetest.settings:get("simple_potions_duration") or 300
simple_potions_jump_mult = minetest.settings:get("simple_potions_jump_mult") or 2
simple_potions_gravity_mult = minetest.settings:get("simple_potions_gravity_mult") or 0.3
simple_potions_heal_mult = minetest.settings:get("simple_potions_heal_mult") or 8
simple_potions_speed_mult = minetest.settings:get("simple_potions_speed_mult") or 2
simple_potions_vessel_override = minetest.settings:get("simple_potions_vessel_override") or true
simple_potions = {}
dofile(minetest.get_modpath("simple_potions").."/effect_types.lua")
dofile(minetest.get_modpath("simple_potions").."/functions.lua")
dofile(minetest.get_modpath("simple_potions").."/specials.lua")
dofile(minetest.get_modpath("simple_potions").."/potions.lua")

