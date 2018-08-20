/*
    Name: init.lua
    By: Bread
    For: Everyone
*/

AddCSLuaFile("shared.lua")
include("shared.lua")
 
function ENT:Initialize()
    self:SetModel("models/Items/BoxMRounds.mdl")
    self:SetUseType( SIMPLE_USE )
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_VPHYSICS )
    self:SetSolid( SOLID_VPHYSICS )
    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
     phys:Wake()
    end
end 
 
local getAmmo = 
{   
    "SniperPenetratedRound",
    "SniperRound",
    "Buckshot",
    "XBowBolt",
    "pistol",
    "smg1",
    "ar2"
}

function ENT:Use(pPlayer, data)
	for _, ammoType in pairs( getAmmo ) do
		pPlayer:GiveAmmo( 30, ammoType )
        self:Remove()
	end
end