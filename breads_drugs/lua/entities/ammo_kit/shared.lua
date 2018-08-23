/*
    Name: shared.lua
    By: Bread
    For: Everyone
*/

ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Ammo Kit"
ENT.Spawnable = true 
ENT.Category  = "Bread's Stuff"


function chatText(strMessage)
	chat.AddText(Color(255, 255, 255), "[bItems] ", Color(255, 0, 255), strMessage)
end