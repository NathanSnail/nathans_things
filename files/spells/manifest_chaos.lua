chaos = {
	id                = "NATHANS_THINGS_MANIFEST_CHAOS",
	name              = "Manifest Chaos",
	description       = "Creates anything from thin air",
	sprite            = "mods/nathans_things/files/sprites/spells/manifest_chaos.png",
	type              = ACTION_TYPE_OTHER,
	spawn_level       = "4,5,6",
	spawn_probability = "1,1,1",
	price             = 500,
	mana              = 20,
	action            = function()
		local target = Random(1, 2)
		if target == 1 then --spell
			local rnd = Random(1, #actions)
			local data = actions[rnd]
			data.action()
		elseif target == 2 then
			
		end
	end
}
