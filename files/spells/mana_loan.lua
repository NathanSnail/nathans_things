mana_loan = {
	id                = "NATHANS_THINGS_MANA_LOAN",
	name              = "Mana Loan",
	description       = "Gives you 50 mana for the cast then takes away 60",
	sprite            = "mods/nathans_things/files/sprites/spells/memory_spell.png",
	type              = ACTION_TYPE_MODIFIER,
	spawn_level       = "0,1,2,3,4",
	spawn_probability = "1,1,1,1,1",
	related_extra_entities = { "mods/nathans_things/files/entities/mana_loan.xml" },
	price             = 15,
	mana              = -50,
	action            = function()
		draw_actions(1, true)
		if reflecting then return end
		local shooter_id = GetUpdatedEntityID()
		local x,y = EntityGetTransform(shooter_id)
		local entity = EntityLoad("mods/nathans_things/files/entities/mana_loan.xml",x,y)
		ComponentSetValue2(EntityGetComponent(entity,"VariableStorageComponent")[1],"value_int",shooter_id)
	end
}