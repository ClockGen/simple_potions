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
					simple_potions.removePotion(user, itemstack, "simple_potions:potion_water")
				end
			end
			return itemstack
		end
	})
end

minetest.register_craft({
	output = "simple_potions:potion_water 6",
	recipe = {
		{'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
		{'vessels:glass_bottle', 'vessels:glass_bottle', 'vessels:glass_bottle'},
		{'', 'bucket:bucket_water', ''}
	},
	replacements = {{ "bucket:bucket_water", "bucket:bucket_empty"}}
})
