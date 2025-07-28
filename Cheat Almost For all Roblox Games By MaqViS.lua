local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Cheats By MaqViS", "RJTheme3")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

amount = 0
finalamount = 0
speed = 0
resize = 0

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
local Size = CharacterTab:NewSection("Size")
local InfinityYield = MainTab:NewSection("Infinity Yield")

local WS = game:GetService("Workspace")

function sizechange(p, size)	
	local pchar = p.Character
	if pchar then
		local function scale(chr,scl)
		
			for _,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
				
		    local Head = chr['Head']
		    local Torso = chr['Torso']
		    local LA = chr['Left Arm']
		    local RA = chr['Right Arm']
		    local LL = chr['Left Leg']
		    local RL = chr['Right Leg']
		    local HRP = chr['HumanoidRootPart']
		
		    wait(0.1)
		   
		    Head.formFactor = 3
		    Torso.formFactor = 3
		    LA.formFactor = 3
		    RA.formFactor = 3
		    LL.formFactor = 3
		    RL.formFactor = 3
		    HRP.formFactor = 3
		    
		    Head.Size = Vector3.new(scl * 2, scl, scl)
		    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
		    LA.Size = Vector3.new(scl, scl * 2, scl)
		    RA.Size = Vector3.new(scl, scl * 2, scl)
		    LL.Size = Vector3.new(scl, scl * 2, scl)
		    RL.Size = Vector3.new(scl, scl * 2, scl)
		    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
		    
		    local Motor1 = Instance.new('Motor6D', Torso)
		    Motor1.Part0 = Torso
		    Motor1.Part1 = Head
	    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.Name = "Neck"
				    
	    	local Motor2 = Instance.new('Motor6D', Torso)
	    	Motor2.Part0 = Torso
	    	Motor2.Part1 = LA
	    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.Name = "Left Shoulder"
	    	
	    	local Motor3 = Instance.new('Motor6D', Torso)
	   		Motor3.Part0 = Torso
	    	Motor3.Part1 = RA
	    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.Name = "Right Shoulder"
	    	
	    	local Motor4 = Instance.new('Motor6D', Torso)
	    	Motor4.Part0 = Torso
	    	Motor4.Part1 = LL
	    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.Name = "Left Hip"
	    	
	    	local Motor5 = Instance.new('Motor6D', Torso)
	    	Motor5.Part0 = Torso
	    	Motor5.Part1 = RL
	    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.Name = "Right Hip"
	    	
	    	local Motor6 = Instance.new('Motor6D', HRP)
	    	Motor6.Part0 = HRP
	    	Motor6.Part1 = Torso
	    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	    
		end
		
		scale(pchar, size)
		pchar.Humanoid.WalkSpeed = 15 * size
	
		for _,v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Hat") then
				v.Parent = pchar
			end
		end
	end
end

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
			speed = walks
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

UserInputService.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.Z then
					LP.Character.Humanoid.WalkSpeed = speed
				elseif input.KeyCode == Enum.KeyCode.X then
					LP.Character.Humanoid.WalkSpeed = 16
				end				
			end
end)
Size:NewSlider("SizeMAX", "SizeMAX", 250, 1, function(sizeamount)
			resize = sizeamount
end)
Size:NewSlider("SizeMIN", "SizeMIN", 1, 0, function(sizeamount)
			resize = sizeamount
end)
Size:NewButton("Re Size", "Re Size", function(sizechange(LP, resize))
Size:NewButton("Default Size", "Default Size", function()
			sizechange(LP, 1)
end)
