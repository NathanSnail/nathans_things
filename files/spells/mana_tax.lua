mana_tax = {
	id                     = "NATHANS_THINGS_MANA_TAX",
	name                   = "Mana Tax",
	description            = "Drains your mana",
	sprite                 = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type                   = ACTION_TYPE_MODIFIER,
	spawn_level            = "0,1,2,3,4",
	spawn_probability      = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/mana_drain.xml" },
	price                  = 15,
	mana                   = -40,
	action                 = function()
		draw_actions(1, true)
		if reflecting then return end
			local shooter_id = GetUpdatedEntityID()
			local x, y = EntityGetTransform(shooter_id)
			local entity = EntityLoad("mods/nathans_things/files/entities/mana_drain.xml", x, y)
			EntityAddChild(shooter_id, entity)
	end
}
