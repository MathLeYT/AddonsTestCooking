surface.CreateFont( "Math_Font1", {
    font = "Trebuchet24",
    extended = false,
    size = 20,
    weight = 700,
    antialias = true,
} )


local function RespX(x) return x/1920*ScrW() end
local function RespY(y) return y/1080*ScrH() end

local function mathfridgepanelprincipal() 

    mathfridgedframe = vgui.Create("DFrame")
    mathfridgedframe:SetSize(RespX(300), RespY(150))
    mathfridgedframe:Center()
    mathfridgedframe:SetTitle("")
   	mathfridgedframe:SetVisible(true)
    mathfridgedframe:SetDraggable(false)
    mathfridgedframe:MakePopup()
   	mathfridgedframe:ShowCloseButton(true)
    mathfridgedframe.Paint = function(s, w, h)
       	draw.RoundedBox(9, 0, 0, w, h, Color(0, 0, 0, 155))
    end

    local Mathfridgetext1 = vgui.Create( "DLabel", mathfridgedframe )
    Mathfridgetext1:SetPos(RespX(38), RespY(22))
    Mathfridgetext1:SetSize(RespX(260), RespY(50))
    Mathfridgetext1:SetFont( "Math_Font1" )
    Mathfridgetext1:SetText( "Je m'appelle mathéo", Color(255, 255, 255, 255) )

    local DermaButton = vgui.Create( "DButton", mathfridgedframe ) 
    DermaButton:SetPos(RespX(100), RespY(22))
    DermaButton:SetSize(RespX(100), RespY(50))
	DermaButton:SetText( "bonjour je m'appelle mathéo" )							
	DermaButton.DoClick = function()							
		LocalPlayer:()ChatPrint("bonjour je m'appelle mathéo")

	end
end



net.Receive("Net.mathfridgeopenpanel", mathfridgepanelprincipal)