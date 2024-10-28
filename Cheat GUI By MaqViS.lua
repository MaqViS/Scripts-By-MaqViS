local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("GUI By MaqViS", "RJTheme3")

local MainTab = Window:NewTab("Main")
local CharacterTab = Window:NewTab("Character Settings")
local ESPTab = Window:NewTab("Visual")

local PS = game:GetService("Players")
local PL = PS:GetChildren()
local LP = PS.LocalPlayer
local Highlight = Instance.new("Highlight")
local HighlightClone = Highlight:Clone()

local Teleport = MainTab:NewSection("Teleporting")
local CharacterSettings = CharacterTab:NewSection("Character Settings")
local ESPSection = ESPTab:NewSection("ESP")

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
        for i, v in pairs(PL) do
            repeat wait() until v.Character   
            if not v ~= LP then
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
        end

        while wait(0.5) do
            if state then
                for o, n in pairs(PL) do
                    repeat wait() until n.Character
                    repeat 
                        wait(0.5)
                        if n.Character.Highlight == nil then
                            local HighlightClone = Highlight:Clone()
                            HighlightClone.Name = "Highlight"
                            HighlightClone.Adornee = joined.Character
                            HighlightClone.Parent = joined.Character
                            HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                            HighlightClone.FillColor = Color3.fromRGB(EspColor1, EspColor2, EspColor3)
                            HighlightClone.FillTransparency = 0.5
                            HighlightClone.OutlineColor = Color3.fromRGB(255, 255, 255)
                            HighlightClone.OutlineTransparency = 0
                        end    
                    until not n.Character.Highlight == nil        
                end    
            else
                break   
            end
        end            

        PS.PlayerAdded:Connect(function(joined)
            if state then
                wait(10)
                repeat wait() until joined.Character
                local HighlightClone = Highlight:Clone()
                HighlightClone.Name = "Highlight"
                HighlightClone.Adornee = joined.Character
                HighlightClone.Parent = joined.Character
                HighlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                HighlightClone.FillColor = Color3.fromRGB(EspColor1, EspColor2, EspColor3)
                HighlightClone.FillTransparency = 0.5
                HighlightClone.OutlineColor = Color3.fromRGB(255, 255, 255)
                HighlightClone.OutlineTransparency = 0
            else
                print("Не работать")    
            end    
        end)

        while wait(0.5) do
            local PL = PS:GetPlayers()
        end

        PL.CharacterAdded:Connect(function(char)
            char:FindFirstChild("Humanoid").Died:Connect(function(reset)
                wait(3)
                repeat wait() until reset.Character
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
    else
        for i, v in pairs(game:GetDescendants()) do
            if v.Name == "Highlight" then
                v:Destroy()           
            end    
        end   
    end       
end)
