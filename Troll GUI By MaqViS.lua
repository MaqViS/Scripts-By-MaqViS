-- Gui to Lua
-- Version: 3.2

-- Instances:

local TrollGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TrollGui_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UICorner_3 = Instance.new("UICorner")

--Properties:

TrollGui.Name = "TrollGui"
TrollGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TrollGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = TrollGui
Frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.336793542, 0, 0.284865618, 0)
Frame.Size = UDim2.new(0, 699, 0, 363)

UICorner.Parent = Frame

TrollGui_2.Name = "TrollGui"
TrollGui_2.Parent = Frame
TrollGui_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TrollGui_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TrollGui_2.BorderSizePixel = 0
TrollGui_2.Size = UDim2.new(0, 699, 0, 26)
TrollGui_2.Font = Enum.Font.SciFi
TrollGui_2.Text = "Troll GUI By MaqViS"
TrollGui_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TrollGui_2.TextSize = 25.000

UICorner_2.Parent = TrollGui_2

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0716253445, 0)
ScrollingFrame.Size = UDim2.new(0, 157, 0, 337)

UICorner_3.Parent = ScrollingFrame
