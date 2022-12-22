delta = {
	id                = "NATHANS_THINGS_DELTA",
	name              = "Delta",
	description       = "Goes back 3 spells",
	sprite            = "mods/nathans_things/files/sprites/spells/delta.png",
	type              = ACTION_TYPE_OTHER,
	spawn_level       = "4,5,6", -- CHAINSAW
	spawn_probability = "1,1,1", -- CHAINSAW
	price             = 500,
	mana              = 75,
	recursive         = true,
	action            = function(recursion_level)
		dofile_once("mods/nathans_things/files/spellutils.lua")

		c.fire_rate_wait = c.fire_rate_wait + 60
		current_reload_time = current_reload_time + 60
		local nothing = false

		handlen = #hand - 1
		discardlen = #discarded
		if handlen ~= 0 then --could probably be 1 but i am too sleepy for that
			for i = math.max(handlen - 2, 1), handlen, 1 do
				s = hand[i]
				rec = check_recursion(s, recursion_level)
				if rec ~= -1 then
					dont_draw_actions = true
					s.action(rec)
					dont_draw_actions = false
				end
			end
			if handlen < 3 then
				drawdisc = 3 - handlen
				for i = math.max(discardlen - drawdisc, 1), discardlen, 1 do
					s = discarded[i]
					if (s ~= nil) -- draw wrapping fix
					then
						rec = check_recursion(s, recursion_level)
						if rec ~= -1 then
							dont_draw_actions = true
							s.action(rec)
							dont_draw_actions = false
						end
					end
				end
			end
		elseif handlen == 0 and discardlen ~= 0 then
			for i = math.max(discardlen - 2, 1), discardlen, 1 do
				s = discarded[i]
				if (s ~= nil) -- draw wrapping fix
				then
					print("a")
					rec = check_recursion(s, recursion_level)
					if rec ~= -1 then
						dont_draw_actions = true
						s.action(rec)
						dont_draw_actions = false
					end
				end
			end
		else
			add_projectile("data/entities/base_projectile.xml") -- i hate noita i hate noita i hate noita i hate noita i hate noita i hate noita i hate noita i hate noita i hate noita
		end
	end
}