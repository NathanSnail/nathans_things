bank_mana = {
	id                = "NATHANS_THINGS_BANK_MANA",
	name              = "Bank Mana",
	description       = "Gives back 60 mana",
	sprite            = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type              = ACTION_TYPE_MODIFIER,
	spawn_level       = "0,1,2,3,4",
	spawn_probability = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/bank_mana.xml" },
	price             = 15,
	mana              = 25,
	action            = function()
		draw_actions(1, true)
		if reflecting then return end
		local shooter_id = GetUpdatedEntityID()
		local x,y = EntityGetTransform(shooter_id)
		local entity = EntityLoad("mods/nathans_things/files/entities/bank_mana.xml",x,y)
		ComponentSetValue2(EntityGetComponent(entity,"VariableStorageComponent")[1],"value_int",shooter_id)
	end
}