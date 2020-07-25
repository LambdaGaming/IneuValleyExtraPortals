
local allowed = {
	["rp_ineu_valley2_v1a"] = true,
	["rp_ineu_valley2_winter"] = true,
	["fof_ineuvalley"] = true
}

local allowedwinter = {
	["rp_ineu_valley2_winter"] = true,
	["fof_ineuvalley"] = true
}

local function OutlandTeleporterFix()
	local map = game.GetMap()
	if allowed[map] then
		local e = ents.Create( "outland_teleporter" )
		e:SetPos( Vector( 10382, 14767, 1351 ) )
		e:SetAngles( Angle( 0, 90, -90 ) )
		e:Spawn()
	end
	if allowedwinter[map] then
		local e = ents.Create( "outland_teleporter" )
		e:SetPos( Vector( 14273, -14873, 54 ) )
		e:SetAngles( Angle( 63, 89, -1 ) )
		e:Spawn()
		e.IntoBase = true
	end
end
hook.Add( "InitPostEntity", "OutlandTeleporterFix", OutlandTeleporterFix )
