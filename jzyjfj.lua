local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local REMOTE_PATH = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents")
local TELEPORT_CFRAME = CFrame.new(900, 650, -403)
local BALLOON_ARGS = {"Balloon"}

local moneyFarmEnabled = false
local activeConnections = {}

local function hslToRgb(h, s, l)
    s = math.clamp(s or 0, 0, 1)
    l = math.clamp(l or 0, 0, 1)
    local c = (1 - math.abs(2 * l - 1)) * s
    local x = c * (1 - math.abs(((h * 6) % 2) - 1))
    local m = l - c / 2
    local r, g, b
    
    if h < 1/6 then
        r, g, b = c, x, 0
    elseif h < 2/6 then
        r, g, b = x, c, 0
    elseif h < 3/6 then
        r, g, b = 0, c, x
    elseif h < 4/6 then
        r, g, b = 0, x, c
    elseif h < 5/6 then
        r, g, b = x, 0, c
    else
        r, g, b = c, 0, x
    end
    
    return (r + m), (g + m), (b + m)
end

local function manageConnection(name, connection)
    if activeConnections[name] then
        activeConnections[name]:Disconnect()
    end
    activeConnections[name] = connection
end

local function cleanupConnections()
    for name, connection in pairs(activeConnections) do
        connection:Disconnect()
        activeConnections[name] = nil
    end
end

local function startRainbowEffect(button, frame)
    local hue = 0
    local hueStep = 0.005
    
    manageConnection("rainbow", RunService.Heartbeat:Connect(function()
        hue = (hue + hueStep) % 1
        local r, g, b = hslToRgb(hue, 0.95, 0.6)
        if button and button.Parent then
            button.BorderColor3 = Color3.fromRGB(r * 255, g * 255, b * 255)
        end
        if frame and frame.Parent then
            frame.BorderColor3 = Color3.fromRGB(r * 255, g * 255, b * 255)
        end
    end))
end

local function executeMoneyFarm()
    REMOTE_PATH:WaitForChild("Launch"):FireServer()    
    task.wait(2)
    if Player.Character then
        Player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(900, 650, -403)
    end
end

local function handleCharacterDeath()
    task.wait(5)
    REMOTE_PATH:WaitForChild("Launch"):FireServer()
    task.wait(2)
    if Player.Character then
        Player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(900, 650, -403)
    end
    REMOTE_PATH:WaitForChild("ActivateBlock"):InvokeServer(unpack(BALLOON_ARGS))
end

local function startMoneyFarm(uiElements)
    if moneyFarmEnabled then return end
    cleanupConnections()
    moneyFarmEnabled = true
    uiElements.scbutton.Text = " "
    uiElements.scbutton.BackgroundTransparency = 0.5
    uiElements.scbutton.BackgroundColor3 = Color3.fromRGB(50, 205, 50)
    startRainbowEffect(uiElements.scbutton, uiElements.main)
    executeMoneyFarm()
    manageConnection("check", RunService.Heartbeat:Connect(function()
        if not moneyFarmEnabled then return end
        local character = Player.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health == 0 then
                handleCharacterDeath()
            end
        end
    end))
end

local function stopMoneyFarm(uiElements)
    if not moneyFarmEnabled then return end
    moneyFarmEnabled = false
    if uiElements.scbutton and uiElements.scbutton.Parent then
        uiElements.scbutton.Text = " "
        uiElements.scbutton.BackgroundTransparency = 0.1
        uiElements.scbutton.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
    end
    cleanupConnections()
    if uiElements.scbutton and uiElements.main then
        startRainbowEffect(uiElements.scbutton, uiElements.main)
    end
    REMOTE_PATH:WaitForChild("Return"):FireServer()
end

local function createUI()
    cleanupConnections()
    local existingUI = PlayerGui:FindFirstChild("ShouYeUI")
    if existingUI then
        existingUI:Destroy()
    end

    local rui = Instance.new("ScreenGui")
    rui.Name = "ShouYeUI"
    rui.ResetOnSpawn = false
    rui.Parent = PlayerGui 

    local main = Instance.new("Frame")
    main.Name = "main"
    main.Size = UDim2.new(0, 160, 0, 120)
    main.AnchorPoint = Vector2.new(0.5, 0.5)  
    main.Position = UDim2.new(0.5, 0, 0.1, 0)  
    main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    main.BackgroundTransparency = 0.1
    main.BorderSizePixel = 1.5
    main.Parent = rui  

    local switchLabel = Instance.new("TextLabel")
    switchLabel.Name = "switchLabel"
    switchLabel.Size = UDim2.new(0.8, 0, 0, 25)
    switchLabel.AnchorPoint = Vector2.new(0.5, 0)
    switchLabel.Position = UDim2.new(0, 75, 0, 20)
    switchLabel.Text = "SNhub V2\n自动刷钱"
    switchLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    switchLabel.TextSize = 14
    switchLabel.TextXAlignment = Enum.TextXAlignment.Center
    switchLabel.BackgroundTransparency = 1
    switchLabel.Parent = main

    local scct = Instance.new("Frame")
    scct.Name = "scct"
    scct.Size = UDim2.new(0.8, 0, 0, 40)
    scct.AnchorPoint = Vector2.new(0.5, 0)
    scct.Position = UDim2.new(0.5, 0, 0, 60)
    scct.BackgroundTransparency = 1
    scct.Parent = main

    local scbutton = Instance.new("TextButton")
    scbutton.Name = "scbutton"
    scbutton.Size = UDim2.new(0.6, 0, 0.3, 0)
    scbutton.Position = UDim2.new(0.2, 0, 0.2, 0)
    scbutton.Text = " "
    scbutton.TextSize = 14
    scbutton.BackgroundColor3 = Color3.fromRGB(220, 20, 60)
    scbutton.BorderSizePixel = 2
    scbutton.BorderColor3 = Color3.fromRGB(100, 100, 100)
    scbutton.BackgroundTransparency = 0.2
    scbutton.Parent = scct

    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Size = UDim2.new(0, 16, 0, 16)
    closeButton.AnchorPoint = Vector2.new(1, 0)
    closeButton.Position = UDim2.new(1, -2, 0, 2) 
    closeButton.Text = "╳"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextSize = 6
    closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
    closeButton.BackgroundTransparency = 1
    closeButton.BorderSizePixel = 0
    closeButton.Parent = main

    local minButton = Instance.new("TextButton")
    minButton.Name = "minButton"
    minButton.Size = UDim2.new(0, 16, 0, 16)
    minButton.AnchorPoint = Vector2.new(1, 0)
    minButton.Position = UDim2.new(0.85, -2, 0, 2) 
    minButton.Text = "一"
    minButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    minButton.TextSize = 6
    minButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
    minButton.BackgroundTransparency = 1
    minButton.BorderSizePixel = 0
    minButton.Parent = main

    local dragBar = Instance.new("Frame")
    dragBar.Name = "DragBar"
    dragBar.Size = UDim2.new(0.8, 0, 0, 3) 
    dragBar.AnchorPoint = Vector2.new(0.5, 0) 
    dragBar.Position = UDim2.new(0.5, 0, 0.02, 0) 
    dragBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
    dragBar.BackgroundTransparency = 0.6 
    dragBar.BorderSizePixel = 0 
    dragBar.Parent = main

    local restoreButton = Instance.new("TextButton")
    restoreButton.Name = "RestoreButton"
    restoreButton.Size = UDim2.new(0, 100, 0, 30)
    restoreButton.Position = UDim2.new(0.1, 0, 0.8, 0)
    restoreButton.AnchorPoint = Vector2.new(0, 0.5)
    restoreButton.Text = "还原窗口"
    restoreButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    restoreButton.TextSize = 12
    restoreButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    restoreButton.BackgroundTransparency = 0.1
    restoreButton.BorderSizePixel = 1
    restoreButton.Visible = false
    restoreButton.Parent = rui

    local uiElements = { main = main, scbutton = scbutton, rui = rui }

    local isDragging = false
    local dragStartPos = nil
    local ballStartPos = nil

    main.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            dragStartPos = input.Position
            ballStartPos = main.Position
            input.Target:CaptureTouch(input.UserInputId)
        end
    end)
    main.InputChanged:Connect(function(input)
        if isDragging and input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - dragStartPos
            local newX = ballStartPos.X.Offset + delta.X
            local newY = ballStartPos.Y.Offset + delta.Y
            local absSize = main.AbsoluteSize
            local screenW, screenH = workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y
            newX = math.max(0, math.min(newX, screenW - absSize.X))
            newY = math.max(0, math.min(newY, screenH - absSize.Y))
            main.Position = UDim2.new(0, newX, 0, newY)
        end
    end)
    main.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            isDragging = false
        end
    end)

    local isRestoring = false
    local restoreStartPos = nil
    local restoreBallPos = nil

    restoreButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            isRestoring = true
            restoreStartPos = input.Position
            restoreBallPos = restoreButton.Position
            input.Target:CaptureTouch(input.UserInputId)
        end
    end)
    restoreButton.InputChanged:Connect(function(input)
        if isRestoring and input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - restoreStartPos
            local newX = restoreBallPos.X.Offset + delta.X
            local newY = restoreBallPos.Y.Offset + delta.Y
            local absSize = restoreButton.AbsoluteSize
            local screenW, screenH = workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y
            newX = math.max(0, math.min(newX, screenW - absSize.X))
            newY = math.max(0, math.min(newY, screenH - absSize.Y))
            restoreButton.Position = UDim2.new(0, newX, 0, newY)
        end
    end)
    restoreButton.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            isRestoring = false
        end
    end)

    
    startRainbowEffect(scbutton, main)
    startRainbowEffect(restoreButton, restoreButton)

    scbutton.MouseButton1Click:Connect(function()
        if moneyFarmEnabled then
            stopMoneyFarm(uiElements)
        else
            startMoneyFarm(uiElements)
        end
    end)

    closeButton.MouseButton1Click:Connect(function()
        stopMoneyFarm(uiElements)
        rui:Destroy()
    end)
    
    minButton.MouseButton1Click:Connect(function()
        main.Visible = false
        restoreButton.Visible = true
    end)
    
    restoreButton.MouseButton1Click:Connect(function()
        main.Visible = true
        restoreButton.Visible = false
    end)
    
    rui.Destroying:Connect(function()
        cleanupConnections()
        moneyFarmEnabled = false
    end)
    
    return rui
end

createUI()

manageConnection("respawn", Player.CharacterAdded:Connect(function(character)
    cleanupConnections()
    moneyFarmEnabled = false
    task.wait(1)
    createUI()
end))

game:BindToClose(function()
    cleanupConnections()
end)
