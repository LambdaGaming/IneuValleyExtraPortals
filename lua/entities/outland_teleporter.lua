AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Ineu Valley Portal"
ENT.Author = "OPGman"
ENT.Spawnable = false

function ENT:Initialize()
    self:SetModel( "models/hunter/plates/plate2x3.mdl" )
	self:SetMoveType( MOVETYPE_NONE )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetRenderMode( RENDERMODE_TRANSCOLOR )
	self:SetColor( color_transparent )
	if SERVER then
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetTrigger( true )
	end
end

function ENT:StartTouch( ent )
	if IsValid( ent ) and ent:IsPlayer() then
		if self.IntoBase then
			ent:SetPos( Vector( 10285, 14766, 1280 ) )
			ent:SetAngles( Angle( 0, 180, 0 ) )
			return
		end
		ent:SetPos( Vector( 14462, -14627, 15 ) )
	end
end
