--(name, desc, texture, efftype, efftexture, particledir, returnitem, craft, func)
simple_potions.registerPotion(
				"potion_water", 
				"Bottle of Water", 
				"bottle_purple.png",
				nil,
				nil,
				nil,
				"vessels:glass_bottle"
				)

simple_potions.registerPotion(
				"potion_health",
				"Healing Potion",
				"bottle_red.png",
				nil,
				"particle_heal.png",
				-0.5,
				"vessels:glass_bottle",
				{'farming:wheat', 'default:steel_ingot', 'simple_potions:potion_water'}, 
				function (itemstack, user, pointed_thing)
				user:set_hp(user:get_hp()+simple_potions_heal_mult)
				end 
				)

simple_potions.registerPotion(
				"potion_regeneration", 
				"Potion of Regeneration", 
				"bottle_crimson.png",
				"eff_potion_regeneration",
				"particle_regeneration.png",
				-0.5,
				"vessels:glass_bottle",
				{'farming:wheat', 'default:gold_ingot', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_invisible", 
				"Potion of Invisibility", 
				"bottle_darkgreen.png",
				"eff_potion_invisible",
				"particle_invis.png",
				0,
				"vessels:glass_bottle",
				{'default:glass', 'default:mese_crystal', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_jump", 
				"Potion of Leaping", 
				"bottle_green.png",
				"eff_potion_jump",
				"particle_jump.png",
				0.5,
				"vessels:glass_bottle",
				{'default:coal_lump', 'default:copper_ingot', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_speed", 
				"Potion of Speed", 
				"bottle_cyan.png",
				"eff_potion_speed",
				"particle_speed.png",
				-0.3,
				"vessels:glass_bottle",
				{'default:papyrus', 'default:apple', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_breath", 
				"Potion of Water Breathing", 
				"bottle_aqua.png",
				"eff_potion_breath",
				"particle_breath.png",
				0,
				"vessels:glass_bottle",
				{'default:papyrus', 'default:copper_ingot', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_gravity", 
				"Potion of Slow Falling", 
				"bottle_blue.png",
				"eff_potion_gravity",
				"particle_gravity.png",
				0.3,
				"vessels:glass_bottle",
				{'default:clay_brick', 'default:gold_ingot', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_fly", 
				"Potion of Flight", 
				"bottle_magenta.png",
				"eff_potion_fly",
				"particle_fly.png",
				-0.1,
				"vessels:glass_bottle",
				{'default:obsidian_block', 'default:diamond', 'simple_potions:potion_water'}
				)

simple_potions.registerPotion(
				"potion_black", 
				"Black Potion", 
				"bottle_black.png",
				nil,
				"particle_black.png",
				0.4,
				"vessels:glass_bottle",
				{'default:flint', 'default:obsidian_shard', 'simple_potions:potion_water'},
				function(itemstack, user, pointed_thing)
				user:set_hp(0)
				end
				)


