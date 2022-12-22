pi2 = {
	id                = "NATHANS_THINGS_LOWER_PI",
	name              = "Pi2",
	description       = "Duplicates the discard",
	sprite            = "mods/nathans_things/files/sprites/spells/pi2.png",
	type              = ACTION_TYPE_OTHER,
	spawn_level       = "4,5,6",
	spawn_probability = "1,1,1",
	recursive         = true,
	price             = 500,
	mana              = 180,
	action            = function()
		dofile_once("mods/nathans_things/files/spellutils.lua")
		if #discarded > (26*2^10) --stop more stupid nonsense
		then
			punish()
			return
		end
		discardclone = copy(discarded) --goofy
		for k, v in ipairs(discardclone) do
			clone = copy(v) -- this is sure to break things
			clone.permanently_attached = true --this doesn't actually work all the time
			table.insert(discarded, clone)
		end
		add_projectile("data/entities/base_projectile.xml")
	end
}