minetest.register_craft({
	output = "simple_potions:potion_water 6",
	recipe = {
		{'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
		{'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
		{'', 'bucket:bucket_water', ''}
	},
	replacements = {{ "bucket:bucket_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "simple_potions:potion_health",
	recipe = {
		{'', 'farming:wheat', ''},
		{'', 'default:steel_ingot', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_regeneration",
	recipe = {
		{'', 'farming:wheat', ''},
		{'', 'default:gold_ingot', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_breath",
	recipe = {
		{'', 'default:papyrus', ''},
		{'', 'default:copper_ingot', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_invisible",
	recipe = {
		{'', 'default:glass', ''},
		{'', 'default:mese_crystal', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_speed",
	recipe = {
		{'', 'default:papyrus', ''},
		{'', 'default:apple', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_jump",
	recipe = {
		{'', 'default:coal_lump', ''},
		{'', 'default:copper_ingot', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_gravity",
	recipe = {
		{'', 'default:clay_brick', ''},
		{'', 'default:mese_crystal', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_fly",
	recipe = {
		{'', 'default:obsidian_block', ''},
		{'', 'default:diamond', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

minetest.register_craft({
	output = "simple_potions:potion_kill",
	recipe = {
		{'', 'default:flint', ''},
		{'', 'default:obsidian_shard', ''},
		{'', 'simple_potions:potion_water', ''}
	}
})

