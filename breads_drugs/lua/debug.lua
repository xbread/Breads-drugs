if SERVER then
    print("-------------------- \n")
    print("bItems Debug loaded  \n")
    print("-------------------- \n")
end 

if CLIENT then 
// simple debug info no need for admin checks  
local getWalkSpeed = LocalPlayer():GetWalkSpeed() 
local getRunSpeed  = LocalPlayer():GetRunSpeed()
local getArmor     = LocalPlayer():Armor() 
local getFrags     = LocalPlayer():Frags()
local getMS        = LocalPlayer():Ping()
local getDeaths    = LocalPlayer():Deaths()
// lol debugcmd meme
concommand.Add("debugcmd", function(perfect, command, arguments)
    MsgC(Color(255, 255, 255), "=====================================================\n")
    MsgC(Color(0, 161, 255), ">  DEBUG INFO \n")
    MsgC(Color(255, 255, 255), "=====================================================\n")
    print("walk: " .. getWalkSpeed)
    print("run: " .. getRunSpeed)
    print("armor: " .. getArmor)
    print("frags: " .. getFrags)
    print("ms: " .. getMS)  
    print("deaths: " .. getDeaths)
    MsgC(Color(255, 255, 255), "=====================================================\n")
    end)
end 