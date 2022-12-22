dofile_once("mods/nathans_things/files/spellutils.lua")
local shooter = EntityGetRootEntity(GetUpdatedEntityID())
local wand_item = getWand(shooter)
if wand_item == nil then return end
local wand_stats = EntityGetComponentIncludingDisabled(wand_item, "AbilityComponent")[1]
local mana_charge_speed = ComponentGetValue2(wand_stats,"mana_charge_speed") / 60
giveMana(shooter,-3*mana_charge_speed)