local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Cheats By MaqViS", "RJTheme3")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

amount = 0
finalamount = 0

local MainTab = Window:NewTab("Main")
local CharacterTab = Window:NewTab("Character Settings")
local ESPTab = Window:NewTab("Visual")
local LuckyTab = Window:NewTab("LB Battlegrounds")

local PS = game:GetService("Players")
local PL = PS:GetChildren()
local LP = PS.LocalPlayer
local Highlight = Instance.new("Highlight")
local HighlightClone = Highlight:Clone()

local Teleport = MainTab:NewSection("Teleporting")
local CharacterSettings = CharacterTab:NewSection("Character Settings")
local ESPSection = ESPTab:NewSection("ESP")
local LuckyBlock = LuckyTab:NewSection("Lucky Blocks")
local Invisible = CharacterTab:NewSection("Invisible")
local InfinityYield = MainTab:NewSection("Infinity Yield")

local WS = game:GetService("Workspace")

Teleport:NewTextBox("To You", "To You", function(toyou)
	PS:WaitForChild(toyou).Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame
end)

Teleport:NewTextBox("To Player", "To Player", function(topl)
	LP.Character.HumanoidRootPart.CFrame = PS:WaitForChild(topl).Character.HumanoidRootPart.CFrame
end)

Teleport:NewButton("Teleport All To You", "Teleport All To You", function()
	for _, n in ipairs(PL) do
        n.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame 
    end
end)

CharacterSettings:NewSlider("WalkSpeed", "WalkSpeed", 250, 0, function(walks)
			LP.Character.Humanoid.WalkSpeed = walks
end)

CharacterSettings:NewButton("Default WalkSpeed", "Default WalkSpeed", function(defwalks)
			LP.Character.Humanoid.WalkSpeed = 16
end)

CharacterSettings:NewSlider("JumpHeight", "JumpHeight", 250, 0, function(jumph)
			LP.Character.Humanoid.JumpHeight = jumph
end)

CharacterSettings:NewButton("Default JumpHeight", "Default JumpHeight", function(defjumph)
			LP.Character.Humanoid.JumpHeight = 7.2
end)

CharacterSettings:NewSlider("JumpPower", "JumpPower", 250, 0, function(jumpp)
			LP.Character.Humanoid.JumpPower = jumpp
end)

CharacterSettings:NewButton("Default JumpPower", "Default JumpPower", function(defjumpp)
			LP.Character.Humanoid.JumpPower = 50
end)		

ESPSection:NewDropdown("ESP Fill Color", "ESP Fill Color", {"Red", "Orange", "Yellow", "Green", "Blue", "Dark Blue", "Pink", "Purple", "Black", "White", "Brown", "Grey"}, function(espcol)
	if espcol == "Red" then
		EspColor1 = 255
        EspColor2 = 0 
        EspColor3 = 0
	elseif espcol == "Orange" then
		EspColor1 = 255
        EspColor2 = 87 
        EspColor3 = 51
	elseif espcol == "Yellow" then
		EspColor1 = 245
        EspColor2 = 205 
        EspColor3 = 48
	elseif espcol == "Green" then
		EspColor1 = 31
        EspColor2 = 128 
        EspColor3 = 29
	elseif espcol == "Blue" then
		EspColor1 = 0
        EspColor2 = 255 
        EspColor3 = 255
	elseif espcol == "Dark Blue" then
		EspColor1 = 16
        EspColor2 = 42
        EspColor3 = 220
	elseif espcol == "Pink" then
		EspColor1 = 170
        EspColor2 = 0
        EspColor3 = 170
	elseif espcol == "Purple" then
		EspColor1 = 98
        EspColor2 = 37
        EspColor3 = 209
	elseif espcol == "Black" then
		EspColor1 = 17
        EspColor2 = 17
        EspColor3 = 17
	elseif espcol == "White" then
		EspColor1 = 255
        EspColor2 = 255
        EspColor3 = 255
	elseif espcol == "Brown" then
		EspColor1 = 117
        EspColor2 = 0
        EspColor3 = 0
	elseif espcol == "Grey" then
		EspColor1 = 91
        EspColor2 = 93 
        EspColor3 = 105
    end    					
end)

ESPSection:NewToggle("ESP Turn On/Off", "ESP Turn On/Off", function(state)
    if state then
        local PS = game:GetService("Players")
        local PL = PS:GetChildren()
        for i, v in pairs(PL) do
            repeat wait() until v.Character   
                local HighlightClone = Highlight:Clone()
                HighlightClone.Name = "Highlight"
                HighlightClone.Adornee = v.Character
                HighlightClone.Parent = v.Character
                HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                HighlightClone.FillColor = Color3.fromRGB(EspColor1, EspColor2, EspColor3)
                HighlightClone.FillTransparency = 0.5
                HighlightClone.OutlineColor = Color3.fromRGB(255, 255, 255)
                HighlightClone.OutlineTransparency = 0
        end

        while true do
            if not state then
                break
            end    
            print("YEs")
            local PS = game:GetService("Players")
            local PL = PS:GetChildren()
            for o, n in pairs(PL) do
                local HighlightClone = Highlight:Clone()
                HighlightClone.Name = "Highlight"
                HighlightClone.Adornee = n.Character
                HighlightClone.Parent = n.Character
                LP.Character.Highlight:Destroy()
                HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                HighlightClone.FillColor = Color3.fromRGB(EspColor1, EspColor2, EspColor3)
                HighlightClone.FillTransparency = 0.5
                HighlightClone.OutlineColor = Color3.fromRGB(255, 255, 255)
                HighlightClone.OutlineTransparency = 0      
            end
        end 

        PS.PlayerAdded:Connect(function(joined)
            print("Joined")
            local HighlightClone = Highlight:Clone()
            HighlightClone.Name = "Highlight"
            HighlightClone.Adornee = joined.Character
            HighlightClone.Parent = joined.Character
            HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            HighlightClone.FillColor = Color3.fromRGB(EspColor1, EspColor2, EspColor3)
            HighlightClone.FillTransparency = 0.5
            HighlightClone.OutlineColor = Color3.fromRGB(255, 255, 255)
            HighlightClone.OutlineTransparency = 0
        end)

        PS.PlayerAdded:Connect(function(plr)
            plr.CharacterAdded:Connect(function(charac)
                charac:FindFirstChild("Humanoid").Died:Connect(function(reset)
                    print("Died")
                    local HighlightClone = Highlight:Clone()
                    HighlightClone.Name = "Highlight"
                    HighlightClone.Adornee = reset.Character
                    HighlightClone.Parent = reset.Character
                    HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    HighlightClone.FillColor = Color3.fromRGB(EspColor1, EspColor2, EspColor3)
                    HighlightClone.FillTransparency = 0.5
                    HighlightClone.OutlineColor = Color3.fromRGB(255, 255, 255)
                    HighlightClone.OutlineTransparency = 0
                end)
            end)
        end)

        PS.PlayerRemoving:Connect(function(leave)
            leave.Character.Highlight:Destroy()
        end)
    else
        for i, v in pairs(game:GetDescendants()) do
            if v.Name == "Highlight" then
                v:Destroy()           
            end    
        end   
    end       
end)
LuckyBlock:NewSlider("Amount", "Amount", 250, 0, function(amountlb)
			finalamount = amountlb	
end)

LuckyBlock:NewButton("Lucky Block", "Lucky Block", function(lb)
			repeat
			amount = amount + 1
			ReplicatedStorage.SpawnLuckyBlock:FireServer()
			until amount == finalamount
			amount = 0
end)

LuckyBlock:NewButton("Super Lucky Block", "Super Lucky Block", function(lb)
			repeat
			amount = amount + 1
			ReplicatedStorage.SpawnSuperBlock:FireServer()
			until amount == finalamount
			amount = 0
end)

LuckyBlock:NewButton("Diamond Lucky Block", "Diamond Lucky Block", function(lb)
			repeat
			amount = amount + 1
			ReplicatedStorage.SpawnDiamondBlock:FireServer()
			until amount == finalamount
			amount = 0
end)

LuckyBlock:NewButton("Rainbow Lucky Block", "Rainbow Lucky Block", function(lb)
			repeat
			amount = amount + 1
			ReplicatedStorage.SpawnRainbowBlock:FireServer()
			until amount == finalamount
			amount = 0
end)

LuckyBlock:NewButton("Galaxy Lucky Block", "Galaxy Lucky Block", function(lb)
			repeat
			amount = amount + 1
			ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			until amount == finalamount
			amount = 0
end)

LuckyBlock:NewButton("All Lucky Blocks", "All Lucky Blocks", function(lb)
			repeat
			amount = amount + 1
			ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			ReplicatedStorage.SpawnRainbowBlock:FireServer()
			ReplicatedStorage.SpawnLuckyBlock:FireServer()
			ReplicatedStorage.SpawnSuperBlock:FireServer()
			ReplicatedStorage.SpawnDiamondBlock:FireServer()
			until amount == finalamount
			amount = 0
end)

Invisible:NewButton("Invisible", "Invisible", function(invis)
			loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
end)

InfinityYield:NewButton("Infinity Yield", "Infinity Yield", function(InfYield)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
