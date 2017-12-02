function removePotion(user, itemstack, replaceitem)
	local inv = user:get_inventory()
	if inv:room_for_item("main", {name=replaceitem}) then
		inv:add_item("main", {name=replaceitem})
		itemstack:take_item()
	end
end

minetest.register_node("simple_potions:potion_regeneration", {
	description = "Potion of Regeneration",
	drawtype = "plantlike",
	tiles = {"bottle_crimson.png"},
	wield_image = "bottle_crimson.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_crimson.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		playereffects.apply_effect_type("potion_regeneration", simple_potions_duration, user)
		potionEffect("particle_regeneration.png", playerpos, 0)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_health", {
	description = "Health Potion",
	drawtype = "plantlike",
	tiles = {"bottle_red.png"},
	wield_image = "bottle_red.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_red.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		local playerhp = user:get_hp()
		user:set_hp(playerhp+simple_potions_heal_mult);
		potionEffect("particle_heal.png", playerpos, -0.5)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_invisible", {
	description = "Potion of Invisibility",
	drawtype = "plantlike",
	tiles = {"bottle_darkgreen.png"},
	wield_image = "bottle_darkgreen.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_darkgreen.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		playereffects.apply_effect_type("potion_invisible", simple_potions_duration, user)
		potionEffect("particle_invis.png", playerpos, 0)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_jump", {
	description = "Potion of Jump",
	drawtype = "plantlike",
	tiles = {"bottle_green.png"},
	wield_image = "bottle_green.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_green.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		playereffects.apply_effect_type("potion_jump", simple_potions_duration, user)
		potionEffect("particle_jump.png", playerpos, 0.5)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_speed", {
	description = "Potion of Speed",
	drawtype = "plantlike",
	tiles = {"bottle_cyan.png"},
	wield_image = "bottle_cyan.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_cyan.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		playereffects.apply_effect_type("potion_speed", simple_potions_duration, user)
		potionEffect("particle_speed.png", playerpos, -0.3)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_breath", {
	description = "Potion of Water Breathing",
	drawtype = "plantlike",
	tiles = {"bottle_aqua.png"},
	wield_image = "bottle_aqua.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_aqua.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		playereffects.apply_effect_type("potion_breath", simple_potions_duration, user)
		potionEffect("particle_breath.png", playerpos, 0)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_gravity", {
	description = "Gravity Potion",
	drawtype = "plantlike",
	tiles = {"bottle_blue.png"},
	wield_image = "bottle_blue.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_blue.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		playereffects.apply_effect_type("potion_gravity", simple_potions_duration, user)
		potionEffect("particle_gravity.png", playerpos, 0.3);
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_fly", {
	description = "Potion of Flight",
	drawtype = "plantlike",
	tiles = {"bottle_magenta.png"},
	wield_image = "bottle_magenta.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_magenta.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos();
		playereffects.apply_effect_type("potion_fly", simple_potions_duration, user)
		potionEffect("particle_fly.png", playerpos, -1)
		removePotion(user, itemstack, "vessels:glass_bottle")
	return itemstack
	end
})

minetest.register_node("simple_potions:potion_water", {
	description = "Bottle of Water",
	drawtype = "plantlike",
	tiles = {"bottle_purple.png"},
	wield_image = "bottle_purple.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_purple.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		removePotion(user, itemstack, "vessels:glass_bottle")
		return itemstack
	end
})

minetest.register_node("simple_potions:potion_kill", {
	description = "Black Potion",
	drawtype = "plantlike",
	tiles = {"bottle_black.png"},
	wield_image = "bottle_black.png",
	paramtype = "light",
	stack_max = 16,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
	},
	groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
	sounds = default.node_sound_glass_defaults(),
	inventory_image = "bottle_black.png",
	on_use = function(itemstack, user, pointed_thing)
		local playerpos = user:getpos()
		potionEffect("particle_black.png", playerpos, 0)
		removePotion(user, itemstack, "vessels:glass_bottle")
		user:set_hp(0)
	return itemstack
	end
})

if simple_potions_vessel_override then
	minetest.register_node(":vessels:glass_bottle", {
		description = "Glass bottle",
		drawtype = "plantlike",
		tiles = {"vessels_glass_bottle.png"},
		wield_image = "vessels_glass_bottle.png",
		paramtype = "light",
		stack_max = 16,
		is_ground_content = false,
		walkable = false,
		liquids_pointable = true,
		selection_box = {
			type = "fixed",
			fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
		},
		groups = {vessel=1,dig_immediate=3,attached_node=1, potion=1},
		sounds = default.node_sound_glass_defaults(),
		inventory_image = "vessels_glass_bottle.png",
		on_use = function(itemstack, user, pointed_thing)
			if pointed_thing.type == "node" then
				local node = minetest.get_node(pointed_thing.under).name
				if node == "default:water_source" then
					removePotion(user, itemstack, "simple_potions:potion_water")
				end
			end
			return itemstack
		end
	})
end

