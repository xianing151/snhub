local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
 
local panel = Instance.new("Frame")
panel.Parent = screenGui
panel.Position = UDim2.new(1, -200, 0, 20)
panel.Size = UDim2.new(0, 180, 0, 80)
panel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
panel.BackgroundTransparency = 0.5
panel.BorderSizePixel = 1
panel.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
panel.ClipsDescendants = true
 
local titleBar = Instance.new("Frame")
titleBar.Parent = panel
titleBar.Size = UDim2.new(1, 0, 0, 20)
titleBar.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
titleBar.Active = true
 
local titleBarTween = game:GetService("TweenService"):Create(
titleBar,
TweenInfo.new(0.2),
{BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)}
)
titleBar.MouseEnter:Connect(function() titleBarTween:Play() end)
titleBar.MouseLeave:Connect(function() titleBarTween:Reverse() end)
 
local coordsLabel = Instance.new("TextLabel")
coordsLabel.Parent = panel
coordsLabel.Position = UDim2.new(0, 5, 0, 25)
coordsLabel.Size = UDim2.new(1, -10, 1, -30)
coordsLabel.BackgroundTransparency = 1
coordsLabel.TextColor3 = Color3.new(1, 1, 1)
coordsLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
coordsLabel.TextStrokeTransparency = 0
coordsLabel.TextScaled = true
coordsLabel.Text = "坐标加载中..."
 
local function createButton(text, color, hoverColor)
local btn = Instance.new("TextButton")
btn.Parent = titleBar
btn.Size = UDim2.new(0, 25, 0, 16)
btn.BackgroundColor3 = color
btn.Text = text
btn.TextColor3 = Color3.new(1, 1, 1)
btn.TextSize = 12
local btnTween = game:GetService("TweenService"):Create(
btn,
TweenInfo.new(0.15),
{BackgroundColor3 = hoverColor}
)
btn.MouseEnter:Connect(function() btnTween:Play() end)
btn.MouseLeave:Connect(function() btnTween:Reverse() end)
return btn
end
 
local minButton = createButton("—", Color3.new(0.3, 0.3, 0.3), Color3.new(0.4, 0.4, 0.4))
minButton.Position = UDim2.new(1, -60, 0, 2)
 
local closeButton = createButton("×", Color3.new(0.8, 0.2, 0.2), Color3.new(0.9, 0.3, 0.3))
closeButton.Position = UDim2.new(1, -30, 0, 2)
 
local isMinimized = false
minButton.MouseButton1Click:Connect(function()
isMinimized = not isMinimized
game:GetService("TweenService"):Create(
panel,
TweenInfo.new(0.2, Enum.EasingStyle.Quad),
{Size = isMinimized and UDim2.new(0, 180, 0, 20) or UDim2.new(0, 180, 0, 80)}
):Play()
game:GetService("TweenService"):Create(
coordsLabel,
TweenInfo.new(0.2),
{TextTransparency = isMinimized and 1 or 0}
):Play()
end)
 
closeButton.MouseButton1Click:Connect(function()
game:GetService("TweenService"):Create(
panel,
TweenInfo.new(0.3, Enum.EasingStyle.Quad),
{
BackgroundTransparency = 1,
BorderSizePixel = 0,
Size = UDim2.new(0, 0, 0, 0),
Position = UDim2.new(panel.Position.X.Scale, panel.Position.X.Offset + 90, panel.Position.Y.Scale, panel.Position.Y.Offset + 40)
}
):Play()
task.wait(0.3)
panel:Destroy()
end)
 
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
 
local function updateCoords()
if humanoidRootPart then
local pos = humanoidRootPart.Position
coordsLabel.Text = string.format("X: %.2f\nY: %.2f\nZ: %.2f", pos.X, pos.Y, pos.Z)
end
end
 
updateCoords()
game:GetService("RunService").RenderStepped:Connect(updateCoords)
player.CharacterAdded:Connect(function(newChar)
character = newChar
humanoidRootPart = newChar:WaitForChild("HumanoidRootPart")
end)
