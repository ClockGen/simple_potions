playereffects.register_effect_type("potion_speed", "Potion of speed", "effect_speed.png", {"potion_speed"},
	function(player)
	player_monoids.speed:add_change(player, simple_potions_speed_mult, "potion_speed")
	end, 
	function(effect, player)
	player_monoids.speed:del_change(player, "potion_speed")
	end
)

playereffects.register_effect_type("potion_jump", "Potion of jump", "effect_jump.png", {"potion_jump"},
	function(player)
	player_monoids.jump:add_change(player, simple_potions_jump_mult, "potion_jump")
	end, 
	function(effect, player)
	player_monoids.jump:del_change(player, "potion_jump")
	end
)

playereffects.register_effect_type("potion_gravity", "Gravity potion", "effect_gravity.png", {"potion_gravity"},
	function(player)
	player_monoids.gravity:add_change(player, simple_potions_gravity_mult, "potion_gravity")
	end, 
	function(effect, player)
	player_monoids.gravity:del_change(player, "potion_gravity")
	end
)

playereffects.register_effect_type("potion_fly", "Flying", "effect_fly.png", {"potion_fly"},
	function(player)
	player_monoids.fly:add_change(player, true, "potion_fly")
	end, 
	function(effect, player)
	player_monoids.fly:add_change(player, false, "potion_fly")
	end
)

playereffects.register_effect_type("potion_invisible", "Invisibility", "effect_invisible.png", {"potion_invisible"},
	function(player)
	player_monoids.visual_size:add_change(player, {x=0, y=0}, "potion_invisible")
	player:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
	end, 
	function(effect, player)
	player_monoids.visual_size:add_change(player, {x=1, y=1}, "potion_invisible")
	player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}})
	end
)

playereffects.register_effect_type("potion_regeneration", "Regeneration", "effect_regen.png", {"potion_regeneration"},
	function(player)
	player:set_hp(player:get_hp()+1)
	end, 
	nil, nil, nil, 1
)

playereffects.register_effect_type("potion_breath", "Water breathing", "effect_breath.png", {"potion_breath"},
	function(player)
	player:set_breath(player:get_breath()+1)
	end, 
	nil, nil, nil, 1
)
