dofile_once("mods/nathans_things/files/spellutils.lua")
local shooter_id = getShooterOfProjectile(GetUpdatedEntityID())
giveMana(shooter_id,-10)