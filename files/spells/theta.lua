theta = {
	id                = "NATHANS_THINGS_THETA",
	name              = "Theta",
	description       = "Swaps the discard and deck",
	sprite            = "mods/nathans_things/files/sprites/spells/theta.png",
	type              = ACTION_TYPE_OTHER,
	spawn_level       = "4,5,6",
	spawn_probability = "1,1,1",
	price             = 500,
	mana              = 220,
	action            = function()
		dofile_once("mods/nathans_things/files/spellutils.lua")
		c.fire_rate_wait = c.fire_rate_wait + 30
		temp = copy(deck)
		deck = copy(discarded)
		discarded = temp
		add_projectile("data/entities/base_projectile.xml")
	end
}