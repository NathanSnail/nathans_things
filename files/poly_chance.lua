function shot(projectile)
	comps = EntityGetComponent(projectile, "ProjectileComponent")
	if (comps ~= nil) and (Random(0, 10) == 0) then
		for k, v in ipairs(comps) do
			ComponentSetValue(v, "damage_game_effect_entities",
				ComponentGetValue(v, "damage_game_effect_entities") .. "data/entities/misc/effect_polymorph.xml,")
		end
	end
end
