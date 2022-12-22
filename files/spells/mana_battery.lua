mana_battery = {
	id                = "NATHANS_THINGS_MANA_BATTERY",
	name              = "Mana Battery",
	description       = "Generates mana",
	sprite            = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type              = ACTION_TYPE_OTHER,
	spawn_level       = "0,1,2,3,4",
	spawn_probability = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/mana_battery.xml" },
	price             = 15,
	mana              = -40,
	action            = function()
		c.fire_rate_wait = c.fire_rate_wait + 11
		current_reload_time = current_reload_time + 5
		add_projectile("data/entities/base_projectile.xml")
		if reflecting then return end
		local shooter_id = GetUpdatedEntityID()
		local x, y = EntityGetTransform(shooter_id)
		local entity = EntityLoad("mods/nathans_things/files/entities/mana_boost.xml", x, y)
		EntityAddChild(shooter_id, entity)
	end
}