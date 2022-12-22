pi = {
	id                = "NATHANS_THINGS_PI",
	name              = "Pi",
	description       = "Adds the deck reversed to the start of the deck",
	sprite            = "mods/nathans_things/files/sprites/spells/pi.png",
	type              = ACTION_TYPE_OTHER,
	spawn_level       = "4,5,6",
	spawn_probability = "1,1,1",
	price             = 500,
	mana              = 360,
	recursive         = true,
	action            = function(recursion_level, iteration)
		dofile_once("mods/nathans_things/files/spellutils.lua")
		if #deck > (26*2^10) --stop stupid nonsense
		then
			punish()
			return
		end
		iteration = iteration or 1
		c.fire_rate_wait = c.fire_rate_wait + 32 --these numbers are just random
		current_reload_time = current_reload_time + 69
		if iteration > 2 then
			punish()
		else
			current_reload_time = current_reload_time + 30
			flipped = {}
			for i = #deck, 1, -1 do
				table.insert(flipped, deck[i])
			end
			clone = {}
			for i = 1, #deck, 1 do
				table.insert(clone, i + #deck, deck[i])
			end
			for k, v in ipairs(flipped) do
				clone[k] = v
			end
			deck = clone
		end
		add_projectile("data/entities/base_projectile.xml")
	end
}