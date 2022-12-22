memory = {
	id                = "NATHANS_THINGS_MEMORY_SPELL",
	name              = "Memory Spell",
	description       = "Casts as many spells as are in the discard",
	sprite            = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type              = ACTION_TYPE_DRAW_MANY,
	spawn_level       = "4,5,6",
	spawn_probability = "1,1,1",
	price             = 500,
	mana              = 20,
	action            = function()
		draw_actions(#discarded, true)
	end
}