/*
    Name: cl_init.lua
    By: Bread
    For: Everyone
*/

include("shared.lua")

/* fonts */
surface.CreateFont( "ENT_FONT", {
    font = "Verdana",
    size = 25,
    weight = 650,
    shadow = true,
    antialias = false,
});
function ENT:Draw()
	self:DrawModel()

    /* Cam3D2D Drawing */

	local Pos = self:GetPos()
	local Ang = Angle( 0, 0, 0)
	local TextAng = Ang
 
	Ang:RotateAroundAxis(Ang:Forward(), 90)
	TextAng:RotateAroundAxis(TextAng:Right(), -90)

	cam.Start3D2D(Pos + Ang:Right() * -17, Angle(0, LocalPlayer():EyeAngles().y-90, 90), 0.1)
		draw.WordBox(0, -175, 0, "Health Drug - Press 'E' to use it (200 HP Given)", "ENT_FONT", Color(0, 0, 0, 155), Color(255,255,255,255))
	cam.End3D2D()
end
