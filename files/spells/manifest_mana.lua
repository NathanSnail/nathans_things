manifest_mana = {
	id                = "NATHANS_THINGS_MANIFEST_MANA",
	name              = "Manifest Mana",
	description       = "Produces mana for every spell it is cast with",
	sprite            = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type              = ACTION_TYPE_MODIFIER,
	spawn_level       = "0,1,2,3,4",
	spawn_probability = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/manifest_mana.xml" },
	price             = 15,
	mana              = 20,
	action            = function()
		draw_actions(1, true)
		
		c.extra_entities = c.extra_entities .. "mods/nathans_things/files/entities/manifest_mana.xml,"
	end
}