/*
    Name: cl_init.lua
    By: Bread
    For: Everyone
*/

include("shared.lua")
 
function ENT:Draw()
	self:DrawModel()
    	local Pos = self:GetPos()
	local Ang = Angle( 0, 0, 0)
	local TextAng = Ang
 
	Ang:RotateAroundAxis(Ang:Forward(), 90)
	TextAng:RotateAroundAxis(TextAng:Right(), -90)

	cam.Start3D2D(Pos + Ang:Right() * -17, Angle(0, LocalPlayer():EyeAngles().y-90, 90), 0.1)
		draw.WordBox(0, -175, 0, "Speed Drug+ - Press 'E' to use it (Speed: " .. LocalPlayer():GetRunSpeed() + LocalPlayer():GetWalkSpeed() * 4 .. " given)", "ENT_FONT", Color(0, 0, 0, 155), Color(255,255,255,255))
	cam.End3D2D()
end
