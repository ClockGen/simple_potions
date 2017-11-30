minetest.register_node("simple_potions:potion_health", {
	description = "Health Potion",
	drawtype = "plantlike",
	tiles = {"bottle_red.png"},
	wield_image = "bottle_red.png",
	paramtype = "light",
	stack_max = 1,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_red.png",
	on_use = function(item, user, pointed_thing)
		local player = user:get_player_name()
		local playerpos = user:getpos();
		local playerhp = user:get_hp();
		user:set_hp(playerhp+4);
		potionEffect("tnt_smoke.png", playerpos);
		item:replace("vessels:glass_bottle");
	return item
	end
})

minetest.register_node("simple_potions:potion_gravity", {
	description = "Gravity Potion",
	drawtype = "plantlike",
	tiles = {"bottle_blue.png"},
	wield_image = "bottle_blue.png",
	paramtype = "light",
	stack_max = 1,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_blue.png",
	on_use = function(item, user, pointed_thing)
		local player = user:get_player_name()
		local playerpos = user:getpos();
		playereffects.apply_effect_type("potion_gravity", 60, user)
		potionEffect("tnt_smoke.png", playerpos);
		item:replace("vessels:glass_bottle");
	return item
	end
})

minetest.register_node("simple_potions:potion_speed", {
	description = "Potion of Speed",
	drawtype = "plantlike",
	tiles = {"bottle_cyan.png"},
	wield_image = "bottle_cyan.png",
	paramtype = "light",
	stack_max = 1,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_cyan.png",
	on_use = function(item, user, pointed_thing)
		local player = user:get_player_name()
		local playerpos = user:getpos();
		playereffects.apply_effect_type("potion_speed", 60, user)
		potionEffect("tnt_smoke.png", playerpos);
		item:replace("vessels:glass_bottle");
	return item
	end
})

minetest.register_node("simple_potions:potion_jump", {
	description = "Potion of Jump",
	drawtype = "plantlike",
	tiles = {"bottle_green.png"},
	wield_image = "bottle_green.png",
	paramtype = "light",
	stack_max = 1,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_green.png",
	on_use = function(item, user, pointed_thing)
		local player = user:get_player_name()
		local playerpos = user:getpos();
		playereffects.apply_effect_type("potion_jump", 60, user)
		potionEffect("tnt_smoke.png", playerpos);
		item:replace("vessels:glass_bottle");
	return item
	end
})

minetest.register_node("simple_potions:potion_fly", {
	description = "Potion of Flight",
	drawtype = "plantlike",
	tiles = {"bottle_magenta.png"},
	wield_image = "bottle_magenta.png",
	paramtype = "light",
	stack_max = 1,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_magenta.png",
	on_use = function(item, user, pointed_thing)
		local player = user:get_player_name()
		local playerpos = user:getpos();
		playereffects.apply_effect_type("potion_fly", 60, user)
		potionEffect("tnt_smoke.png", playerpos);
		item:replace("vessels:glass_bottle");
	return item
	end
})


