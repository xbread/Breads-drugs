/*
    Name: init.lua
    By: Bread
    For: Everyone
*/

AddCSLuaFile("shared.lua")
include("shared.lua")
 
function ENT:Initialize()
    self:SetModel("models/items/battery.mdl")
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
    if (pPlayer:Armor() >= 200) then
        pPlayer:ChatPrint("[ERROR] Your armor is currently over the limit. Armor: " .. pPlayer:Armor() .. ".")     
    end
    if (pPlayer:Armor() <= 199) then 
        pPlayer:SetArmor(200)
        self:Remove()
        pPlayer:SendLua([[chatText("You now have 200 armor!")]])
    end
end 