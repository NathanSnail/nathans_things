function PrintDebugInfo()
	for k, card in ipairs(deck) do
		print("DECK:" .. tostring(k) .. tostring(card.id))
	end
	for k, card in ipairs(hand) do
		print("HAND:" .. tostring(k) .. tostring(card.id))
	end
	for k, card in ipairs(discarded) do
		print("DISCARD:" .. tostring(k) .. tostring(card.id))
	end
end

function copy(obj, seen) --why isn't this in the standard library???
	if type(obj) ~= 'table' then return obj end
	if seen and seen[obj] then return seen[obj] end
	local s = seen or {}
	local res = setmetatable({}, getmetatable(obj))
	s[obj] = res
	for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
	return res
end

function punish()
	c.fire_rate_wait = c.fire_rate_wait + 301
	current_reload_time = current_reload_time + 252
	add_projectile("data/entities/projectiles/deck/all_rockets.xml")
end

function getWand(eid)
	if eid == 0 then return end -- stops reflection from being silly during initialisation
	local children = EntityGetAllChildren(eid)
	for _, child in ipairs(children or {}) do
		if EntityGetName(child) == "inventory_quick" then
			for _, item in ipairs(EntityGetAllChildren(child)) do
				if EntityHasTag(item, "wand") then
					if ComponentGetIsEnabled(EntityGetComponentIncludingDisabled(item, "SpriteComponent")[1]) then
						return item
					end
				end
			end
		end
	end
end

function giveMana(eid, amount) --can't be called in the action because it is overwriten
	if eid == 0 then return end
	local wand_item = getWand(eid)
	if wand_item == nil then return end
	local wand = EntityGetComponentIncludingDisabled(wand_item, "AbilityComponent")[1]
	local mana = ComponentGetValue2(wand, "mana")
	local mana_max = ComponentGetValue2(wand, "mana_max")
	ComponentSetValue2(wand, "mana", math.max(0, math.min(mana - amount, mana_max)))
end

function getShooterOfProjectile(eid)
	if eid == 0 then return end
	local projectile_component = EntityGetComponent(eid, "ProjectileComponent")[1]
	return ComponentGetValue2(projectile_component, "mWhoShot")
end

function manaEntityToMana(amount)
	local projectile_id = GetUpdatedEntityID()
	local variable_storage = EntityGetComponent(projectile_id, "VariableStorageComponent")[1]
	local shooter_id = ComponentGetValue2(variable_storage, "value_int")
	giveMana(tonumber(shooter_id), amount)
	if shooter_id ~= "0" then
		EntityKill(projectile_id)
	end
end
