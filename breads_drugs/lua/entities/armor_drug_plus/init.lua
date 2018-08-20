/*
    Name: init.lua
    By: Bread
    For: Everyone
*/

AddCSLuaFile("shared.lua")
include("shared.lua")
 
function ENT:Initialize()
    self:SetModel("models/items/car_battery01.mdl")
    self:PhysicsInit( SOLID_VPHYSICS )
    self:SetMoveType( MOVETYPE_VPHYSICS )
    self:SetSolid( SOLID_VPHYSICS )
    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
     phys:Wake()
    end
end 
 
function ENT:Use(pPlayer)
    if (pPlayer:Armor() >= 400) then
        pPlayer:ChatPrint("Your armor is currently over the limit. Armor: " .. pPlayer:SetArmor() .. ".")     
    end
    if (pPlayer:Armor() <= 399) then 
        pPlayer:SetArmor(400)
        self:Remove()
    end
end 