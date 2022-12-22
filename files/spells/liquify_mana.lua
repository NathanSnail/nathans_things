liquify_mana = {
	id                     = "NATHANS_THINGS_LIQUIFY_MANA", 
	name                   = "Liquify Mana",
	description            = "Makes a projectile convert nearby materials to concentrated mana",
	sprite                 = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type                   = ACTION_TYPE_MODIFIER,
	spawn_level            = "0,1,2,3,4",
	spawn_probability      = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/liquify_mana.xml" },
	price                  = 15,
	mana                   = 20,
	action                 = function()
		c.fire_rate_wait = c.fire_rate_wait - 3
		current_reload_time = current_reload_time + 2
		c.extra_entities = c.extra_entities .. "mods/nathans_things/files/entities/liquify_mana.xml,"
		draw_actions(1, true)
	end
}
