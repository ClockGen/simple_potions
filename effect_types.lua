playereffects.register_effect_type("potion_speed", "Potion of speed", "effect_speed.png", {"potion_speed"},
	function(player)
	player_monoids.speed:add_change(player, 3, "potion_speed")
	end, 
	function(effect, player)
	player_monoids.speed:del_change(player, "potion_speed")
	end,
	false
)

playereffects.register_effect_type("potion_jump", "Potion of jump", "effect_jump.png", {"potion_jump"},
	function(player)
	player_monoids.jump:add_change(player, 3, "potion_jump")
	end, 
	function(effect, player)
	player_monoids.jump:del_change(player, "potion_jump")
	end,
	false
)

playereffects.register_effect_type("potion_gravity", "Gravity potion", "effect_gravity.png", {"potion_gravity"},
	function(player)
	player_monoids.gravity:add_change(player, 0.3, "potion_gravity")
	end, 
	function(effect, player)
	player_monoids.gravity:del_change(player, "potion_gravity")
	end,
	false
)

playereffects.register_effect_type("potion_fly", "Flying", "effect_fly.png", {"potion_fly"},
	function(player)
	player_monoids.fly:add_change(player, true, "potion_fly")
	end, 
	function(effect, player)
	player_monoids.fly:add_change(player, false, "potion_fly")
	end,
	false
)
