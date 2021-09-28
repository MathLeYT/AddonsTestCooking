AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props_c17/FurnitureFridge001a.mdl")
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_VPHYSICS )
    self:SetSolid( SOLID_VPHYSICS )
    self:PhysWake()
    self:SetBodygroup( 1, 5)
    self:SetUseType( SIMPLE_USE )
end

function ENT:Use(caller, a)
	if caller:IsPlayer() and caller:GetPos():DistToSqr(self:GetPos() ) < 15000 then
		print("test")
		net.Start("Net.mathfridgeopenpanel")
		net.Send(caller)
	end
end