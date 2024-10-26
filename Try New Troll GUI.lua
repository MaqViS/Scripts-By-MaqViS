local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("TrollTest", "RJTheme3")

local MainTab = Window:NewTab("Main")

local Player = game.Players.LocalPlayer

local PlayerService = game:GetService("Players")

local CharacterTab = Window:NewTab("Character Settings")

local Cikl = 0

local Teleport = MainTab:NewSection("Teleporting")

local CharacterSettings = CharacterTab:NewSection("Character Settings")

local Main = game:GetService("Workspace")

Teleport:NewTextBox("To You", "To You", function(toyou)
	PlayerService:WaitForChild(toyou).Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
end)

Teleport:NewTextBox("To Player", "To Player", function(topl)
	Player.Character.HumanoidRootPart.CFrame = PlayerService:WaitForChild(topl).Character.HumanoidRootPart.CFrame
end)

CharacterSettings:NewSlider("WalkSpeed", "WalkSpeed", 10000, 0, function(walks)
			Player.Character.Humanoid.WalkSpeed = walks
end)

CharacterSettings:NewButton("Default WalkSpeed", "Default WalkSpeed", function(defwalks)
			Player.Character.Humanoid.WalkSpeed = 16
end)

CharacterSettings:NewSlider("JumpHeight", "JumpHeight", 10000, 0, function(jumph)
			Player.Character.Humanoid.JumpHeight = jumph
end)

CharacterSettings:NewButton("Default JumpHeight", "Default JumpHeight", function(defjumph)
			Player.Character.Humanoid.JumpHeight = 7.2
end)

CharacterSettings:NewSlider("JumpPower", "JumpPower", 10000, 0, function(jumpp)
			Player.Character.Humanoid.JumpPower = jumpp
end)

CharacterSettings:NewButton("Default JumpPower", "Default JumpPower", function(defjumpp)
			Player.Character.Humanoid.JumpPower = 50
end)		
