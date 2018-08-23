/*
    Name: init.lua
    By: Bread
    For: Everyone
*/

AddCSLuaFile("shared.lua")
include("shared.lua")

local speedTime = 120
local hasSpeed = false 
function ENT:Initialize()
    self:SetModel("models/props_junk/PopCan01a.mdl")
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
    if hasSpeed == true then return pPlayer:ChatPrint("You already have speed barry") end 
    hasSpeed = true 
    pPlayer:ChatPrint("You have been given speed for " .. speedTime .. " seconds.")
    pPlayer:SetRunSpeed(pPlayer:GetRunSpeed() * 4) 
    pPlayer:SetWalkSpeed(pPlayer:GetWalkSpeed() * 4)
    
    timer.Simple(speedTime, function()
        hasSpeed = false 
        pPlayer:SetRunSpeed(pPlayer:GetRunSpeed() / 4)
        pPlayer:SetWalkSpeed(pPlayer:GetWalkSpeed() / 4) 
        pPlayer:ChatPrint("It has been " .. speedTime .. " and your speed is now gone!")        
        pPlayer:SendLua([[chatText("If your speed is lower than what you started with kill your self.")]])       
    end)
    self:Remove()
end