burn_mana = {
	id                = "NATHANS_THINGS_BURN_MANA",
	name              = "Burn Mana",
	description       = "Gives 120 mana when cast",
	sprite            = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type              = ACTION_TYPE_MODIFIER,
	spawn_level       = "0,1,2,3,4",
	spawn_probability = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/burn_mana.xml" },
	price             = 15,
	mana              = 140,
	action            = function()
		draw_actions(1, true)
		if reflecting then return end
		local shooter_id = GetUpdatedEntityID()
		local x,y = EntityGetTransform(shooter_id)
		local entity = EntityLoad("mods/nathans_things/files/entities/burn_mana.xml",x,y)
		ComponentSetValue2(EntityGetComponent(entity,"VariableStorageComponent")[1],"value_int",shooter_id)
	end
}