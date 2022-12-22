-- table.insert(perk_list,
-- 	{
-- 		id = "POLY_SHOTS",
-- 		ui_name = "poly shots",
-- 		ui_description = "poly shots",
-- 		ui_icon = "data/ui_gfx/perk_icons/breath_underwater.png",
-- 		perk_icon = "data/items_gfx/perks/breath_underwater.png",
-- 		stackable = STACKABLE_NO,
-- 		stackable_is_rare = true,
-- 		func = function(entity_perk_item, entity_who_picked, item_name)
-- 			EntityAddComponent2(entity_who_picked,"LuaComponent",
-- 		{
-- 			_enabled = 1,
-- 			script_shot="mods/nathans_things/poly_chance.lua",
-- 			execute_every_n_frame="-1"
-- 		})
-- 		end
-- 	}
-- )
-- made for grahams things

table.insert(perk_list,
	{
		id = "POLY_SHOTS",
		ui_name = "poly shots",
		ui_description = "poly shots",
		ui_icon = "data/ui_gfx/perk_icons/breath_underwater.png",
		perk_icon = "data/items_gfx/perks/breath_underwater.png",
		stackable = STACKABLE_NO,
		stackable_is_rare = true,
		func = function(entity_perk_item, entity_who_picked, item_name)
			EntityAddComponent2(entity_who_picked,"LuaComponent",
		{
			_enabled = 1,
			script_shot="mods/nathans_things/files/poly_chance.lua",
			execute_every_n_frame="-1"
		})
		end
	}
)