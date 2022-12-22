-- ModLuaFileAppend("data/scripts/perks/perk_list.lua", "mods/nathans_things/perk_appends.lua")
-- ModLuaFileAppend("data/scripts/status_effects/status_list.lua","mods/nathans_things/stats_appends.lua")

-- Spells
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/nathans_things/files/spells/gun_actions_appends.lua")

-- local data = {}
-- local spc = 73706900 -- spc in hex, hopefully people wont use this because wang colours must be unique
-- function add_target(name, particle) -- add a target file
-- 	table.insert(data, { name = name, particle = particle })
-- end

-- add_target("acid", "acid")
-- add_target("lava", "lava")
-- add_target("water", "water")
-- add_target("alcohol", "alcohol")
-- add_target("oil", "oil")
-- add_target("acid_gas", "acid") -- this one creates acid particles despite being flammable gas requiring an extra function argument
-- function generate_material(name, particle, id) -- generates a material component
-- 	return [[	<CellDataChild
-- 		_parent="]] .. particle .. [["
-- 		name="spicytp_fake_material_]] .. name .. particle .. [["
-- 		ui_name="a"
-- 		wang_color="]] .. tostring(spc + id) .. [["
-- >
-- 	</CellDataChild>]] -- material component structure
-- end

-- -- 		cell_type="static"
-- -- 		gfx_glow="50" 
-- local head = [[<Materials>
-- ]] -- beginning of materials file
-- local body = [[

-- ]] -- materials list
-- local tail = [[

-- </Materials>]] -- end of materials file
-- local materials_location = "mods/nathans_things/files/materials.xml" -- the location of the materials file we are adding the fake materials to
-- for k, v in ipairs(data) do -- for each item in data
-- 	local target = "data/entities/projectiles/deck/sea_" .. v.name .. ".xml" -- get the sea of x file we are modifying
-- 	body = body .. "\n" .. generate_material(v.name, v.particle, k) -- add a fake material
-- 	local content = ModTextFileGetContent(target) -- read the sea of x file content
-- 	-- content = string.gsub(content, "emitted_material_name=\"" .. v.particle,
-- 	-- 	"emitted_material_name=\"spicytp_fake_material_" .. v.name .. v.particle) -- swap out the particle produced
-- 	-- ModTextFileSetContent(target, content) -- set the sea of x file content
-- end
-- ModTextFileSetContent(materials_location, head .. body .. tail) -- set the materials content
-- ModMaterialsFileAdd(materials_location) -- register the materials
