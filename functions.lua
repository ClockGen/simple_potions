function simple_potions.potionEffect(ptex, ppos, pdir)
	minetest.add_particlespawner({
	amount = 50,
	time = 1,
	minpos = {x=ppos.x-0.5, y=ppos.y+1.5, z=ppos.z-0.5},
	maxpos = {x=ppos.x+0.5, y=ppos.y+2, z=ppos.z+0.5},
	minvel = {x=-3, y=3*pdir, z=-3},
	maxvel = {x=3, y=3*pdir, z=3},
	minacc = {x=0, y=-0.5, z=0},
	maxacc = {x=0, y=0.5, z=0},
	minexptime = 1,
	maxexptime = 1,
	minsize = 1,
	maxsize = 3,
	collisiondetection = true,
	collision_removal = false,
	attached = player,
	glow = 10,
	vertical = false,
	texture = ptex,
	})
end

function simple_potions.removePotion(user, itemstack, replaceitem)
	local inv = user:get_inventory()
	if inv:room_for_item("main", {name=replaceitem}) then
		inv:add_item("main", {name=replaceitem})
		itemstack:take_item()
	end
end

function simple_potions.registerPotion(name, desc, texture, efftype, efftexture, particledir, returnitem, craft, func)
	minetest.register_node("simple_potions:" .. name, {
		description = desc,
		drawtype = "plantlike",
		tiles = {texture},
		wield_image = texture,
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
		inventory_image = texture,
		on_use = function(itemstack, user, pointed_thing)
			local playerpos = user:getpos()
			if efftype ~= nil then playereffects.apply_effect_type(efftype, simple_potions_duration, user) end
			if func ~= nil then func(itemstack, user, pointed_thing) end
			if efftexture ~= nil then simple_potions.potionEffect(efftexture, playerpos, particledir) end
			if returnitem ~= nil then simple_potions.removePotion(user, itemstack, returnitem) end
		return itemstack
		end
	})
	if craft ~= nil then
		minetest.register_craft({
		type = "shapeless",
		output = "simple_potions:" .. name,
		recipe = craft
		})
	end
end
