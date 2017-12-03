# Simple potions for minetest
## Description
* A mod for minetest that adds simple, craftable potions
* Potions can be placed as node or stored in default vessel shelves
## Dependencies
* player_monoids
* playereffects
## List of potions
* Potion of healing
* Potion of regeneration
* Potion of water breathing
* Potion of speed
* Potion of jumping
* Potion of low gravity
* Potion of flight
* Potion of invisibility
* Suicide potion
## Crafting
* All crafting recipies can be viewed using crafting_guide, unified_inventory or smart_inventory mods.
* Default glass bottle is overriden to allow filling it from water sources. Simply look at default water source and press left mouse button.
Alternatively, you could fill water bottles by combining water bucket and 6 empty bottles on empty crafting grid. This recipe exists as a fallback one
when default bottle is not overriden.
## Settings
* You can change various related settings in options->advanced options->mods->simple_potions menu.
* Alternatively, you can paste and change the values straight to your minetest.conf:
```
simple_potions_duration = 300
simple_potions_jump_mult = 2
simple_potions_gravity_mult = 0.5
simple_potions_heal_mult = 8
simple_potions_speed_mult = 3
simple_potions_vessel_override = true
```
* Disable vessel_override if you have other mods overriding default vessels:glass_bottle.
## License
* Original bottle texture by Vanessa Ezekowitz (CC BY-SA 3.0)
* All potion textures are based on original texture by Vanessa Ezekowitz (CC BY-SA 3.0)
* Everything else is licensed under WTFPL
