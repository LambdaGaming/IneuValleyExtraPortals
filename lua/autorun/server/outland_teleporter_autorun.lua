
local allowed = {
	["rp_ineu_valley2_v1a"] = true,
	["rp_ineu_valley2_winter"] = true
}

local function OutlandTeleporterFix()
	if allowed[game.GetMap()] then
		local e = ents.Create( "outland_teleporter" )
		e:SetPos( Vector( 10382, 14767, 1351 ) )
		e:SetAngles( Angle( 0, 90, -90 ) )
		e:Spawn()
	end
end
hook.Add( "InitPostEntity", "OutlandTeleporterFix", OutlandTeleporterFix )
