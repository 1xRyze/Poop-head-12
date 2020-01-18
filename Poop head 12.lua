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
		if string.sub(CMDBAR.Text, 1, 4) == ("cmds") then
			game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "PRESS F9!";
			Text = "Commands loaded into console!";
			})
			print[[
			------------------------------Ryze Admin/ Encrypted Admin CMDS------------------------------
			sans {plr} --Gives player sans head
			mario {plr} --Gives player mario head
			scoobis {plr} --Gives player scoobis head
			rj --Makes you rejoin the game
			re --Respawns you
			--------------------------------------------------------------------------------------------
			]]
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
		if string.sub(CMDBAR.Text, 1, 2) == ("re") then
			lplr.Character.Torso:Destroy()
		end
		CMDBAR.Text = ""
		Frame.Visible = false
	end
end)
