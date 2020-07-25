AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Outland Teleporter"
ENT.Author = "Lambda Gaming"
ENT.Spawnable = false

--This is just a simple entity that players can use to teleport back to the 
--combine base entrance on rp_ineu_valley2_v1a, since the only other way would be via aircraft or noclip

function ENT:Initialize()
    self:SetModel( "models/hunter/plates/plate2x3.mdl" )
	self:SetMoveType( MOVETYPE_NONE )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetRenderMode( RENDERMODE_TRANSCOLOR )
	self:SetColor( color_transparent )
	if SERVER then
		self:PhysicsInit( SOLID_VPHYSICS )
	end
end

function ENT:StartTouch( ent )
	if IsValid( ent ) and ent:IsPlayer() then
		ent:SetPos( Vector( 14462, -14627, 15 ) )
	end
end
