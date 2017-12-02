function potionEffect(ptex, ppos, pdir)
	minetest.add_particlespawner({
	amount = 50,
	time = 0.1,
	minpos = {x=ppos.x-0.5, y=ppos.y+1.5, z=ppos.z-0.5},
	maxpos = {x=ppos.x+0.5, y=ppos.y+2, z=ppos.z+0.5},
	minvel = {x=-3, y=3*pdir, z=-3},
	maxvel = {x=3, y=3*pdir, z=3},
	minacc = {x=0, y=0, z=0},
	maxacc = {x=0, y=0, z=0},
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
