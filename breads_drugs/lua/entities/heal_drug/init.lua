/*
    Name: init.lua
    By: Bread
    For: Everyone
*/

AddCSLuaFile("shared.lua")
include("shared.lua")
 
function ENT:Initialize()
    self:SetModel("models/healthvial.mdl")
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_VPHYSICS )
    self:SetSolid( SOLID_VPHYSICS )
    self:SetUseType( SIMPLE_USE )
    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
     phys:Wake()
    end
end 
 
function ENT:Use(pPlayer)
    if (pPlayer:Health() >= 200) then
        pPlayer:ChatPrint("[ERROR] Your health is currently over the limit. HP: " .. pPlayer:Health() .. ".")     
    end
    if (pPlayer:Health() <= 199) then 
        pPlayer:SetHealth(200)
        self:Remove()
        pPlayer:SendLua([[chatText("You now have 200 health!")]])
    end
end 