loadstring(
    game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/discordpopup/main/discordpopup.lua", true)
)()

local NotificationLibrary =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/notif_lib.lua"))()

local function playSound(soundId, loudness)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
    sound.Volume = loudness or 1
    sound:Play()
end

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local closeButton = Instance.new("TextButton")
local infoButton = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local uic2 = Instance.new("UICorner")
local uic1 = Instance.new("UICorner")
local categoriesFrame = Instance.new("ScrollingFrame")
local categoriesLayout = Instance.new("UIListLayout")
local categoriesPadding = Instance.new("UIPadding")
local scroll = Instance.new("ScrollingFrame")
local listLayout = Instance.new("UIListLayout")
local barlist = Instance.new("UIListLayout")
local barpadding = Instance.new("UIPadding")
local padding = Instance.new("UIPadding")
local searchbar = Instance.new("TextBox")
local creds = Instance.new("TextLabel")
local bar = Instance.new("Frame")
local songname = Instance.new("TextLabel")
local bpmbox = Instance.new("TextBox")
local playsong = Instance.new("TextButton")
local minimizeButton = Instance.new("TextButton")
local toggle = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = ScreenGui
frame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Size = UDim2.new(0, 475, 0, 272)

closeButton.Name = "closeButton"
closeButton.Parent = frame
closeButton.BackgroundTransparency = 1.000
closeButton.LayoutOrder = 1
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.ZIndex = 5
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextScaled = true
closeButton.TextWrapped = true

infoButton.Name = "infoButton"
infoButton.Parent = frame
infoButton.BackgroundTransparency = 1.000
infoButton.LayoutOrder = 2
infoButton.Position = UDim2.new(0, 5, 0, 5)
infoButton.Size = UDim2.new(0, 30, 0, 30)
infoButton.ZIndex = 5
infoButton.Font = Enum.Font.SourceSansBold
infoButton.Text = "?"
infoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
infoButton.TextScaled = true
infoButton.TextWrapped = true

title.Name = "title"
title.Parent = frame
title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = Enum.Font.SourceSansBold
title.Text = "TALENTLESS"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 46.000

uic2.CornerRadius = UDim.new(0, 4)
uic2.Name = "uic2"
uic2.Parent = title

uic1.CornerRadius = UDim.new(0, 4)
uic1.Name = "uic1"
uic1.Parent = frame

categoriesFrame.Name = "categoriesFrame"
categoriesFrame.Parent = frame
categoriesFrame.Active = true
categoriesFrame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
categoriesFrame.BackgroundTransparency = 1.000
categoriesFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
categoriesFrame.BorderSizePixel = 0
categoriesFrame.Position = UDim2.new(0.0105263162, 0, 0.183819935, 0)
categoriesFrame.Size = UDim2.new(0, 111, 0, 222)
categoriesFrame.ZIndex = 0
categoriesFrame.ScrollBarThickness = 3
categoriesFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

categoriesLayout.Name = "categoriesLayout"
categoriesLayout.Parent = categoriesFrame
categoriesLayout.SortOrder = Enum.SortOrder.LayoutOrder
categoriesLayout.Padding = UDim.new(0, 10)
categoriesLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

categoriesPadding.Name = "categoriesPadding"
categoriesPadding.Parent = categoriesFrame
categoriesPadding.PaddingLeft = UDim.new(0, 5)
categoriesPadding.PaddingRight = UDim.new(0, 5)
categoriesPadding.PaddingTop = UDim.new(0, 5)
categoriesPadding.PaddingBottom = UDim.new(0, 5)

scroll.Name = "scroll"
scroll.Parent = frame
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
scroll.BackgroundTransparency = 1.000
scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
scroll.BorderSizePixel = 0
scroll.Position = UDim2.new(0.266860753, 0, 0.183819935, 0)
scroll.Size = UDim2.new(0, 198, 0, 222)
scroll.CanvasPosition = Vector2.new(0, 17.4999962)
scroll.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
scroll.ScrollBarThickness = 3
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

listLayout.Name = "listLayout"
listLayout.Parent = scroll
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 20)

padding.Name = "padding"
padding.Parent = scroll
padding.PaddingTop = UDim.new(0, 20)
padding.PaddingBottom = UDim.new(0, 20)

searchbar.Name = "searchbar"
searchbar.Parent = scroll
searchbar.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
searchbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
searchbar.BorderSizePixel = 0
searchbar.Position = UDim2.new(0.163100004, 0, 0.0500000007, 0)
searchbar.Size = UDim2.new(0, 150, 0, 20)
searchbar.Font = Enum.Font.SourceSansBold
searchbar.PlaceholderText = "Search..."
searchbar.Text = ""
searchbar.TextColor3 = Color3.fromRGB(255, 255, 255)
searchbar.TextScaled = true
searchbar.TextSize = 14.000
searchbar.TextWrapped = true

creds.Name = "creds"
creds.Parent = frame
creds.AnchorPoint = Vector2.new(0.5, 0.5)
creds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
creds.BackgroundTransparency = 1.000
creds.BorderColor3 = Color3.fromRGB(0, 0, 0)
creds.BorderSizePixel = 0
creds.Position = UDim2.new(0.5, 0, 0.189999998, 0)
creds.Size = UDim2.new(0, 314, 0, 26)
creds.Font = Enum.Font.LuckiestGuy
creds.Text = "piano autoplayer by hellohellohell012321"
creds.TextColor3 = Color3.fromRGB(255, 254, 255)
creds.TextScaled = true
creds.TextSize = 14.000
creds.TextTransparency = 0.320
creds.TextWrapped = true

bar.Name = "bar"
bar.Parent = frame
bar.Active = true
bar.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
bar.BackgroundTransparency = 1.000
bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(1.05001855, -173, 0.20220229, 0)
bar.Size = UDim2.new(0, 143, 0, 150)
bar.ZIndex = 0

songname.Name = "songname"
songname.Parent = bar
songname.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
songname.BorderColor3 = Color3.fromRGB(64, 68, 90)
songname.BorderSizePixel = 4
songname.Position = UDim2.new(0.0689100027, 0, 0.0855299979, 0)
songname.Size = UDim2.new(0, 125, 0, 34)
songname.ZIndex = -5
songname.Font = Enum.Font.SourceSansBold
songname.Text = "SONG NAME"
songname.TextColor3 = Color3.fromRGB(255, 255, 255)
songname.TextScaled = true
songname.TextSize = 23.000
songname.TextWrapped = true
songname.LayoutOrder = 1

bpmbox.Name = "bpmbox"
bpmbox.Parent = bar
bpmbox.BackgroundColor3 = Color3.fromRGB(96, 102, 121)
bpmbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
bpmbox.BorderSizePixel = 0
bpmbox.Position = UDim2.new(0.163100004, 0, 0.612699986, 0)
bpmbox.Size = UDim2.new(0, 90, 0, 20)
bpmbox.Font = Enum.Font.SourceSansBold
bpmbox.PlaceholderText = "bpm"
bpmbox.Text = ""
bpmbox.TextColor3 = Color3.fromRGB(255, 255, 255)
bpmbox.TextScaled = true
bpmbox.TextSize = 14.000
bpmbox.TextWrapped = true
bpmbox.LayoutOrder = 2

playsong.Name = "playsong"
playsong.Parent = bar
playsong.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
playsong.BorderColor3 = Color3.fromRGB(64, 68, 90)
playsong.BorderSizePixel = 4
playsong.Position = UDim2.new(0.0689100027, 0, 0.38815999, 0)
playsong.Size = UDim2.new(0, 125, 0, 27)
playsong.Font = Enum.Font.SourceSansBold
playsong.Text = "play song !"
playsong.TextColor3 = Color3.fromRGB(255, 255, 255)
playsong.TextSize = 25.000
playsong.LayoutOrder = 3

barlist.Name = "barlist"
barlist.Parent = bar
barlist.SortOrder = Enum.SortOrder.LayoutOrder
barlist.Padding = UDim.new(0, 10)
barlist.HorizontalAlignment = Enum.HorizontalAlignment.Center

barpadding.Name = "categoriesPadding"
barpadding.Parent = bar
barpadding.PaddingLeft = UDim.new(0, 5)
barpadding.PaddingRight = UDim.new(0, 5)
barpadding.PaddingTop = UDim.new(0, 10)
barpadding.PaddingBottom = UDim.new(0, 5)

minimizeButton.Name = "minimizeButton"
minimizeButton.Parent = frame
minimizeButton.BackgroundTransparency = 1.000
minimizeButton.LayoutOrder = 1
minimizeButton.Position = UDim2.new(0.936842084, -35, 0, 5)
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.ZIndex = 5
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.Text = "—"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.TextScaled = true
minimizeButton.TextWrapped = true

toggle.Name = "toggle"
toggle.Parent = ScreenGui
toggle.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
toggle.BorderColor3 = Color3.fromRGB(64, 68, 90)
toggle.BorderSizePixel = 4
toggle.AnchorPoint = Vector2.new(0, 0.5)
toggle.Position = UDim2.new(0, 0, 0.5, 0)
toggle.Size = UDim2.new(0, 136, 0, 40)
toggle.Font = Enum.Font.SourceSansBold
toggle.Text = "toggle ui"
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.TextSize = 29.000

toggle.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
    if frame.Visible then
        playSound(70452176150315, 0.1)
    else
        playSound(1524549907, 0.1) 
    end
end)


local UserInputService = game:GetService("UserInputService")

local gui = toggle

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position =
        UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

UserInputService.InputChanged:Connect(
    function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end
)



local minimized = false
minimizeButton.MouseButton1Click:Connect(function()

    minimized = not minimized
    if minimized then
        frame.BackgroundTransparency = 1
        for _, element in ipairs(frame:GetDescendants()) do
            if element ~= minimizeButton
            and element ~= creds
            and element ~= title
            and element ~= closeButton
            and element ~= infoButton
            and not element:IsA("UICorner") 
            and not element:IsA("UIPadding")
            and not element:IsA("UIListLayout")
            then
                element.Visible = false
            end
        end
    else 
        frame.BackgroundTransparency = 0
        for _, element in ipairs(frame:GetDescendants()) do
            if element ~= minimizeButton
            and element ~= creds
            and element ~= title
            and element ~= closeButton 
            and element ~= infoButton
            and not element:IsA("UICorner") 
            and not element:IsA("UIPadding")
            and not element:IsA("UIListLayout")
            then
                element.Visible = true
            end
        end
    end
end)



local gameId = game.GameId

local spoofMidiPlz = false

if gameId == 3929033413 then

    -- Gui to Lua
    -- Version: 3.2

    -- Instances:

    local spoofMidiInfo = Instance.new("TextButton")
    local spoofMidi = Instance.new("TextButton")
    local underline = Instance.new("TextLabel")

    --Properties:

    spoofMidiInfo.Name = "spoofMidiInfo"
    spoofMidiInfo.Parent = frame
    spoofMidiInfo.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    spoofMidiInfo.BorderColor3 = Color3.fromRGB(64, 68, 90)
    spoofMidiInfo.BorderSizePixel = 2
    spoofMidiInfo.LayoutOrder = 3
    spoofMidiInfo.Position = UDim2.new(0.919436276, 0, 0.884484231, 0)
    spoofMidiInfo.Size = UDim2.new(0, 23, 0, 23)
    spoofMidiInfo.Font = Enum.Font.SourceSansItalic
    spoofMidiInfo.Text = "?"
    spoofMidiInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
    spoofMidiInfo.TextSize = 25.000

    spoofMidiInfo.MouseButton1Click:Connect(
        function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/spoofMidiInfo.lua", true))()
        end
    )

    spoofMidi.Name = "spoofMidi"
    spoofMidi.Parent = frame
    spoofMidi.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    spoofMidi.BackgroundTransparency = 1.000
    spoofMidi.BorderColor3 = Color3.fromRGB(64, 68, 90)
    spoofMidi.BorderSizePixel = 4
    spoofMidi.LayoutOrder = 3
    spoofMidi.Position = UDim2.new(0.68785733, 0, 0.899189472, 0)
    spoofMidi.Size = UDim2.new(0, 103, 0, 15)
    spoofMidi.Font = Enum.Font.SourceSansItalic
    spoofMidi.Text = "spoof midi [ ]"
    spoofMidi.TextColor3 = Color3.fromRGB(255, 255, 255)
    spoofMidi.TextSize = 23.000
    spoofMidi.TextXAlignment = Enum.TextXAlignment.Left

    spoofMidi.MouseButton1Click:Connect(
        function()
            spoofMidiPlz = not spoofMidiPlz
            if spoofMidiPlz then
                spoofMidi.Text = "spoof midi [x]"
                playSound(6493287948, 0.1)
                NotificationLibrary:SendNotification("Success", "midi spoofing is turned on. click the question mark for more info.", 5)
            else
                spoofMidi.Text = "spoof midi [ ]"
                playSound(6493287948, 0.1) -- replace with actual sound ID for disabling
                NotificationLibrary:SendNotification("Success", "midi spoofing is turned off", 5)
            end
        end
    )

    underline.Name = "underline"
    underline.Parent = spoofMidi
    underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    underline.BackgroundTransparency = 1.000
    underline.BorderColor3 = Color3.fromRGB(0, 0, 0)
    underline.BorderSizePixel = 0
    underline.Position = UDim2.new(-0.121739127, 0, -0.0386352539, 0)
    underline.Size = UDim2.new(0, 102, 0, 22)
    underline.Font = Enum.Font.SourceSans
    underline.Text = "_____________"
    underline.TextColor3 = Color3.fromRGB(255, 255, 255)
    underline.TextSize = 14.000

end



local function filterSongs(query)
    query = query:lower()
    scroll.CanvasPosition = Vector2.new(0, 0)
    for _, child in pairs(scroll:GetChildren()) do
        if child:IsA("TextButton")  then
            -- Regular song buttons
            local songName = child.Text:lower()
            local alternateNamesStr = child:GetAttribute("AlternateNames") or ""
            local alternateNames = alternateNamesStr:split(",")
            local matchFound = false

            if songName:find(query) then
                matchFound = true
            else
                for _, altName in pairs(alternateNames) do
                    if matchFound == false then
                        if altName:lower():find(query) then
                            matchFound = true
                        end
                    end
                end
            end
            child.Visible = matchFound or query == ""
        elseif child:IsA("Frame") and child:FindFirstChildOfClass("TextButton") then
            -- Custom song frames
            local button = child:FindFirstChildOfClass("TextButton")
            local songName = button.Text:lower()
            local matchFound = songName:find(query)
            child.Visible = matchFound or query == ""
        end
    end
end

searchbar:GetPropertyChangedSignal("Text"):Connect(
    function()
        filterSongs(searchbar.Text)
    end
)

filterSongs("")

-- drag script (not mince)

local UserInputService = game:GetService("UserInputService")

local gui = frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position =
        UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

UserInputService.InputChanged:Connect(
    function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end
)

local function newSongButton(name, textsize, alternateNames)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = scroll
    button.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    button.BorderColor3 = Color3.fromRGB(64, 68, 90)
    button.BorderSizePixel = 4
    button.Size = UDim2.new(0, 175, 0, 35)
    button.Font = Enum.Font.SourceSansBold
    button.Text = name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = textsize

    button:SetAttribute("AlternateNames", table.concat(alternateNames or {}, ","))

    return button
end

-- newSongButton("", 27, {})

LOOPRANDOM = newSongButton("SHUFFLE PLAY SONGS", 22, {})
PLAYRANDOM = newSongButton("PLAY A RANDOM SONG", 22, {})

local seperator = Instance.new("Frame")
seperator.Name = "seperator"
seperator.Parent = scroll
seperator.BackgroundColor3 = Color3.fromRGB(64, 68, 90)
seperator.Size = UDim2.new(0, 200, 0, 8)

if game.Players.LocalPlayer.Name == "4BCQA" or game.Players.LocalPlayer.Name == "fredoggins" then
    AVRIL_14 = newSongButton("AVRIL 14", 27, {})
else
end

A505 = newSongButton("505", 27, {"北极猴子", "Arctic Monkeys"}) 
A99DOT9 = newSongButton("99.9", 27, {"灵能百分百"})
A_SKY_FULL = newSongButton("繁星满天", 23, {"酷玩乐队 Coldplay"})
A_THOUSAND = newSongButton("千里迢迢", 24, {"流行"})
AFTER_DARK = newSongButton("夜幕降临", 27, {"Mr.Kitty"})
ALL_GIRLS = newSongButton("所有女孩都一样", 19, {"Juice WRLD"})
ALL_I_WANT_IS_YOU = newSongButton("我只要你", 26, {"Rebzyyx"})
ALL_MY_FELLAS = newSongButton("我的兄弟们", 27, {})
ALL_THE_STARS = newSongButton("满天繁星", 27, {"Kendrick Lamar, SZA, 黑豹"})
ALONE = newSongButton("孤独一人", 27, {"Marshmello"})
ENIGMATIC = newSongButton("神秘的邂逅", 17, {"传说之下：最后一息"})
ANOTHER_LOVE = newSongButton("另寻他爱", 27, {"悲伤情歌"})
ANYONE_CAN = newSongButton("谁都能找到爱（除了你）", 10, {"爆裂核心"})
ARIA_MATH = newSongButton("Aria Math", 27, {"C418"}) -- 若有更合适译法可再优化
ARUARIAN = newSongButton("荒天之舞", 27, {"Nujabes"})
AS_IT_WAS = newSongButton("过去如此", 27, {"Harry Styles"})
ASGORE = newSongButton("Asgore", 27, {}) -- 可补充为“传说之下：Asgore”
ASSUMPTIONS = newSongButton("假设", 27, {})
ASTRONAMIA = newSongButton("天文学之舞（棺材舞）", 15, {})
SPEED_OF = newSongButton("光速前行", 20, {"几何冲刺 GD"})
AVENGERS = newSongButton("复仇者联盟（史诗翻唱）", 20, {"流行 电影 高燃"})
BAD_APPLE = newSongButton("Bad Apple!!", 27, {"经典"})
BAD_HABIT = newSongButton("坏习惯", 27, {"Steve Lacy"})
BAD_PIGGIES = newSongButton("愤怒的小鸟", 27, {})
BATTLE_AGAINST = newSongButton("对抗真英雄", 15, {})
BEETHOVEN_VIRUS = newSongButton("贝多芬病毒", 24, {"古典电子风"})
BELIEVER = newSongButton("信徒", 27, {"Imagine Dragons"})
BIRDS_OF_A = newSongButton("物以类聚", 23, {"Billie Eilish"})
BLINDING_LIGHTS = newSongButton("炫目灯光", 27, {"The Weeknd"})
BLOODY = newSongButton("血腥玛丽", 27, {"Lady Gaga / Wednesday"})
BLUE = newSongButton("蓝天（Da Ba Dee）", 27, {"我很好 我很蓝"})
BLUE_YUNG = newSongButton("蓝色（Yung Kai）", 27, {})
BREADY = newSongButton("预备，开始，冲！", 25, {})
BY_YOUR_SIDE = newSongButton("伴你左右", 27, {})
CAN_YOU_HEAR = newSongButton("你能听见这音乐吗", 18, {"奥本海默 热门"})
CAN_YOU_HEAR_EPIC = newSongButton("你能听见这音乐（史诗版）", 11, {"Hans Zimmer 奥本海默"})
CANDYLAND = newSongButton("糖果乐园", 27, {"Tobu NCS 无版权音乐"})
CANON_D = newSongButton("D大调卡农", 27, {})
CANT_LET = newSongButton("无法放手", 27, {"几何冲刺 GD"})
CARELESS = newSongButton("轻柔耳语", 24, {})
CAROL_OF_THE_BELLS = newSongButton("圣诞钟声", 23, {"圣诞节"})
CAROL_OF_THE_BELLS_EPIC = newSongButton("圣诞钟声（史诗版）", 14, {"圣诞节 Peter Buka"})
CENTIMETER = newSongButton("一厘米", 27, {"租借女友"})
CHRISTMAS_KIDS = newSongButton("圣诞小子", 27, {"Roar"})
CLAIR_DE_LUNE = newSongButton("月光曲", 27, {"德彪西"})
CLOUD_9 = newSongButton("云霄飞车", 27, {"Tobu NCS 无版权"})
CLUBSTEP = newSongButton("Clubstep", 27, {"几何冲刺 GD"})
COCONUT = newSongButton("椰子商城！！", 27, {"马里奥赛车 任天堂"})
COUNTING_STARS = newSongButton("数星星", 27, {"OneRepublic"})
CRAB_RAVE = newSongButton("螃蟹狂欢", 27, {"无版权音乐 NCS"})
CRADLES = newSongButton("摇篮曲", 27, {"NCS 无版权"})
CUPID = newSongButton("丘比特", 27, {"爱情"})
DAMNED = newSongButton("被诅咒的（COD僵尸）", 19, {"COD僵尸主题曲 恐怖"})
DARK_BEACH = newSongButton("暗色海滩", 27, {"Pastel Ghost"})
DAWN_OF = newSongButton("门之黎明", 22, {"Roblox 门"})
DAYLIGHT = newSongButton("日光", 27, {"David Kushner"})
DEADLOCKED = newSongButton("僵局", 27, {"几何冲刺 GD"})
DEATH_BED = newSongButton("死亡床边", 27, {"Powfu Beabadoobee"})
DESPACITO = newSongButton("Despacito", 27, {})
DETROIT = newSongButton("底特律：成为人类 - 开场", 11, {})
DIE_WITH = newSongButton("含笑而终", 27, {"Lady Gaga & Bruno Mars"})
DOG_SONG = newSongButton("狗狗之歌", 27, {})
DONT_STOP = newSongButton("别停下信念", 21, {"Journey"})
DRAMAM = newSongButton("戏剧狂想", 27, {"Flawed Mangoes"})
DREAM_FL = newSongButton("梦之花", 27, {"Klydix"})
DREAM_ON = newSongButton("继续追梦", 27, {"Aerosmith"})
DROWNING_LOVE = newSongButton("溺爱", 27, {"Chasing Kou"})
DRY_HANDS = newSongButton("干枯之手", 27, {"C418"})
DUMB_DUMB = newSongButton("笨笨", 27, {"大家都傻"})
DUVET = newSongButton("羽绒被", 27, {"Boa"})
EASY_ON_ME = newSongButton("对我温柔点", 27, {"Adele"})
ELEVATOR_JAM = newSongButton("电梯狂欢", 27, {"Roblox 门"})
ELEVATOR_JAM_2 = newSongButton("电梯狂欢 x 我来了", 15, {"Roblox 门"})
ENEMY = newSongButton("敌人", 27, {"Imagine Dragons Arcane"})
ENTRY_OF_THE = newSongButton("角斗士入场", 17, {"马戏团 小丑"})
ERIKA = newSongButton("Erika", 27, {"纳粹 德国 二战"})
EVERGREEN = newSongButton("常青树", 27, {})
EXPERIENCE = newSongButton("体验", 27, {})
EXPERIENCE_FLOWS = newSongButton("体验在你心中流淌", 16, {"Tony Ann 河流"})
FADED = newSongButton("褪色", 27, {"Alan Walker 无版权"})
FANTAISIE = newSongButton("即兴幻想曲", 20, {"肖邦 高难"})
FALLEN_DOWN = newSongButton("坠落", 27, {})
FIELD_OF_MEMORIES = newSongButton("记忆原野", 23, {"Waterflame"})
FINAL_DUET = newSongButton("最终二重唱", 27, {"Omori"})
FINALE = newSongButton("终章", 27, {})
FIVE_NIGHTS_1 = newSongButton("玩具熊的午夜后宫1", 18, {"FNAF 闹鬼玩具"})
FLARE = newSongButton("闪耀", 27, {"Phonk"})
FLASHING = newSongButton("闪烁灯光", 27, {"Kanye West"})
FLY_ME_TO_THE_MOON = newSongButton("带我飞向月球", 22, {"Frank Sinatra 爵士"})
FREEDOM_DIVE = newSongButton("自由潜水", 27, {"Xi"})
FRIENDS = newSongButton("朋友们", 27, {"Marshmello Anne Marie"})
FR = newSongButton("从一开始", 25, {"Laufey 流行"})
FREAKS = newSongButton("怪咖", 27, {"Surf Curse"})
FUKASHIGI = newSongButton("狐仙牌（兔女郎）", 13, {"Senpai"})
FUR_ELISE = newSongButton("致爱丽丝", 27, {"贝多芬 古典"})
GANGSTAS_PARADISE = newSongButton("黑帮天堂", 22, {"Coolio"})
GEOMETRY_DASH = newSongButton("几何冲刺主题曲", 14, {"GD"})
GIORNO = newSongButton("Giorno的主题", 27, {"JoJo流行"})
GODS_PLAN = newSongButton("上帝的计划", 27, {"Drake"})
GOLDENHOUR = newSongButton("黄金时刻", 27, {"Jvke 悲伤流行"})
GOOD_MORNING = newSongButton("早安（Omori）", 18, {"Omori"})
GOOFY_AHH = newSongButton("滑稽音效 NPC 音乐", 19, {"口哨声"})
GRAVITY_FALLS = newSongButton("怪诞小镇", 27, {})
GYPSY_WOMAN = newSongButton("吉普赛女郎", 27, {"Crystal Waters"})
HAGGSTORM = newSongButton("风暴", 27, {"C418"})
HAPPIER = newSongButton("更快乐", 27, {"Marshmello Bastille"})
HATSUNE_MIKU_NO_GEKISHOU = newSongButton("初音未来 激唱", 14, {"Vocaloid 初音"})
HEARTACHE = newSongButton("心痛", 27, {})
HEAT_WAVE = newSongButton("热浪", 27, {"Glass Animals"})
HEATHENS = newSongButton("异教徒", 27, {"Twenty One Pilots 自杀小队"})
HELLO = newSongButton("你好 我爱你", 25.5, {"OMFG"})
HERE_I_COME = newSongButton("我来了", 27, {"Roblox 门"})
HERE_WITH = newSongButton("与我同在", 27, {"D4VD 浪漫"})
HES_A_PIRATE = newSongButton("他是个海盗", 27, {"加勒比海盗 Hans Zimmer"})
HIGH_HOPES = newSongButton("满怀希望", 27, {"Panic At The Disco"})
HIMITSU_KOI_GOKORO = newSongButton("暗恋情愫", 21, {"租借女友 Honeyworks"})
LENAI = newSongButton("说不出口", 27, {"租借女友"})
HH = newSongButton("HH", 27, {"Kanye West 希特勒"})
HIS_THEME = newSongButton("他的主题曲", 27, {})
HIT_THE_ROAD = newSongButton("上路吧 Jack", 24, {"Shake"})
HOPE = newSongButton("希望", 27, {"XXXTentacion"})
HOPES_DREAMS = newSongButton("希望与梦想", 23, {"Asriel"})
HOTLINE_BLING = newSongButton("热线响铃", 27, {"Drake"})
HOUSE_OF = newSongButton("回忆之屋", 22, {"Panic At The Disco"})
HOWLS_MOVING_CASTLE = newSongButton("霍尔的移动城堡", 20, {"宫崎骏 吉卜力"})
HOWLS_MOVING_CASTLE_2 = newSongButton("霍尔的移动城堡（史诗版）", 13, {"吉卜力"})
HUNGARIAN = newSongButton("匈牙利舞曲", 23, {})
I_LIKE_THE_WAY_YOU = newSongButton("我喜欢你亲吻我的方式", 15, {"Artemis"})
I_REALLY_WANT_TO_STAY = newSongButton("我真的想留在你家", 10.5, {"赛博朋克"})
I_WANT = newSongButton("我想要那样", 24, {"后街男孩"})
SURVIVE = newSongButton("我会活下来", 27, {})
ICARUS = newSongButton("伊卡洛斯", 27, {"Tony Ann"})
IDGAF = newSongButton("我不在乎", 27, {"BoyWithUke Blackbear"})
IDOL = newSongButton("偶像", 27, {"Oshi no Ko Yoasobi"})
IDOL_EPIC = newSongButton("偶像（史诗版）", 27, {"Oshi no Ko Yoasobi"})
IF_I_AM_WITH_YOU = newSongButton("如果我与你同在", 27, {"咒术回战 柔术 紫色"})
IM_STILL = newSongButton("我依然屹立", 26, {"Elton John"})
IMMORTAL = newSongButton("不朽", 27, {"Playboi Carti"})
IN_THE_NAME = newSongButton("以爱之名", 22, {})
INSANE = newSongButton("疯狂", 27, {"Hazbin Hotel"})
INTERSTELLAR = newSongButton("星际穿越", 27, {"Hans Zimmer 电影"})
ISABELLA = newSongButton("伊莎贝拉摇篮曲", 24, {})
ISOLATION = newSongButton("隔离", 27, {"几何冲刺 GD"})
IT_MEANS = newSongButton("这意味着一切", 20, {})
ITS_BEEN_SO = newSongButton("已经过去这么久", 27, {"FNAF"})
ITS_JUST_A_BURNING = newSongButton("只是燃烧的记忆", 15, {})
ITS_RAINING = newSongButton("天上下墨西哥卷", 26, {})
JOCELYN_FLORES = newSongButton("Jocelyn Flores", 27, {"XXXTentacion"})
KAWAIKUTEGOMEN = newSongButton("不好意思", 26, {"Honeyworks"})
KEROSENE = newSongButton("煤油", 27, {"流行"})
KEY = newSongButton("钥匙", 27, {"C418"})
L = newSongButton("L", 27, {"死亡笔记"})
LAVENDER_TOWN = newSongButton("紫苑镇", 27, {"宝可梦"})
LA_CAMPANELLA = newSongButton("钟声练习曲", 27, {"李斯特 高难"})
LACRIMOSA = newSongButton("安魂曲 - 拉克rimosa", 22, {"莫扎特"})
LALALA = newSongButton("啦啦啦", 27, {"BBNO$"})
LET_ME_LOVE = newSongButton("让我爱你", 27, {"Justin Bieber DJ Snake"})
LEVAN_POLKKA = newSongButton("Levan Polkka", 27, {"初音未来"})
LEVELS = newSongButton("Levels", 27, {"Avicii"})
LIGHT_SWITCH = newSongButton("电灯开关", 27, {"Charlie Puth"})
LIGHTS = newSongButton("Lights 主题", 27, {"死亡笔记"})
LIVING_MICE = newSongButton("活老鼠", 27, {"C418"})
LOST_LIBRARY = newSongButton("失落的图书馆", 27, {"Omori"})
LOST_UMB = newSongButton("遗失的雨伞", 27, {"Vocaloid 可爱抑郁"})
LOVELY_B = newSongButton("可爱的混蛋们", 27, {"Phonk"})
LUTHER = newSongButton("Luther", 27, {"Kendrick Lamar SZA"})
MA_MEILLEUR = newSongButton("我的死敌", 22, {"Arcane Stromae"})
MAGICAL_CURE = newSongButton("魔法治愈！爱的子弹！", 15, {"初音未来"})
MARI_BOSS = newSongButton("玛丽的 Boss 战", 25, {"Omori"})
MARRIED = newSongButton("婚姻生活", 27, {"电影：飞屋环游记"})
MARY_ON = newSongButton("Mary On A Cross", 27, {})
MEGALOVANIA = newSongButton("魔王魂", 27, {"传说之下 热门"})
METAMORPH = newSongButton("变形", 27, {"Phonk"})
MICE_ON = newSongButton("金星上的老鼠", 27, {"C418"})
MICHAEL_MYERS = newSongButton("迈克尔·迈尔斯", 27, {"万圣节"})
MIDDLE_OF_THE_NIGHT = newSongButton("午夜时分", 22, {"Elley Duhé"})
MII = newSongButton("Mii频道主题曲", 22, {"Wii"})
MIKU = newSongButton("初音未来", 27, {"Vocaloid"})
MINECRAFT = newSongButton("我的世界", 27, {"C418"})
MONODY = newSongButton("独白", 27, {"NCS 无版权"})
MONTAGEM_TOMADA = newSongButton("蒙太奇", 23, {"Phonk"})
MOOD = newSongButton("心情", 27, {"24kgoldn"})
MOOG_CITY = newSongButton("Moog City", 27, {"我的世界 C418"})
MOONLIGHT = newSongButton("月光奏鸣曲 第一乐章", 10, {"贝多芬"})
M3 = newSongButton("月光奏鸣曲 第三乐章", 10, {"贝多芬"})
MY_EYES = newSongButton("我的眼睛", 27, {"Travis Scott"})
MY_ORDINARY_LIFE = newSongButton("我的平凡生活", 26, {"The Living Tombstone"})
GIVE_UP = newSongButton("绝不放弃你", 17, {"Rick Astley Rickroll"})
NEVER_MEANT = newSongButton("从未属于", 18, {"死神 Bleach"})
NOCTURNE = newSongButton("夜曲", 27, {"肖邦"})
NOT_A_SLACKER = newSongButton("不再懒惰", 18, {})
NOT_LIKE_US = newSongButton("和我们不一样", 27, {"Kendrick Lamar Drake"})
NOTION = newSongButton("念头", 27, {"The Rare Occasions"})
NYEH = newSongButton("嘿嘿嘿！", 27, {"Papyrus"})
OLD_TOWN_ROAD = newSongButton("老城路", 27, {"Lil Nas X"})
ONCE_UPON = newSongButton("很久很久以前", 26, {})
ONE_DANCE = newSongButton("一舞", 27, {"Drake Wizkid"})
PAST_LIVES = newSongButton("前世", 27, {})
PEACHES = newSongButton("桃子", 27, {"Jack Black"})
POKEMON = newSongButton("宝可梦主题曲", 18, {})
POKEMON_RED = newSongButton("红蓝宝石", 18, {})
PRAYER = newSongButton("祈祷", 27, {"Kendrick Lamar"})
RACING_INTO = newSongButton("夜色飞驰", 20, {"Yoasobi"})
RAIN = newSongButton("雨", 27, {"Tony Ann"})
RATDANCE = newSongButton("老鼠舞", 27, {"国际象棋"})
RESONANCE = newSongButton("共鸣", 27, {"家"})
RISE_UP = newSongButton("崛起", 27, {"NCS 无版权"})
RISES_THE = newSongButton("月亮升起", 27, {"Liana Flores"})
RIVER_FLOWS = newSongButton("河流在你心中流淌", 23, {})
ROMANTIC_HOMICIDE = newSongButton("浪漫谋杀", 22, {"Dv4d"})
RUINS = newSongButton("废墟", 27, {})
RUNAWAY = newSongButton("逃跑", 27, {"Kanye 流行说唱"})
RUNNING_UP = newSongButton("跑上那座山", 19, {"怪奇物语"})
RUSH_OF_LIFE = newSongButton("生命奔流", 27, {"Tony Ann"})
RUSHE = newSongButton("Rush E", 27, {"乐谱老板"})
SANS = newSongButton("Sans", 27, {"传说之下"})
SAVE_YOUR = newSongButton("拯救你的眼泪", 27, {"The Weeknd"})
SEE_YOU_AGAIN = newSongButton("再见你一次", 27, {"Tyler The Creator"})
SHAPE_OF = newSongButton("你的模样", 27, {"Ed Sheeran"})
SHIAWASE = newSongButton("幸福（VIP）", 27, {"几何冲刺 GD"})
SHIKAIRO = newSongButton("闪光的日子", 27, {"Nokotan"})
SHOP = newSongButton("商店", 27, {})
SICK_OF_U = newSongButton("受够你了", 27, {"BoyWithUke"})
SKELETAL_SHENANIGANS = newSongButton("骨骼闹剧", 19, {"几何冲刺 GD"})
SKYFALL = newSongButton("天幕杀机", 27, {"Adele"})
SLAY = newSongButton("斩杀", 27, {"Phonk"})
SNOWFALL = newSongButton("雪花飘落", 27, {"Oneheart"})
SNOWY = newSongButton("雪地", 27, {})
SOLAS = newSongButton("悲伤", 27, {})
SOVIET_UNION_ANTHEM = newSongButton("苏联国歌", 19, {})
SOMEBODY_THAT_I_USED = newSongButton("曾经熟悉的人", 13, {"Gotye"})
SOMETHING_JUST = newSongButton("就像这样", 17, {"The Chainsmokers"})
SONG_THAT_MIGHT = newSongButton("对战Sans时可能播放的歌", 9.5, {"传说之下"})
SPACE_SONG = newSongButton("太空之歌", 27, {"Beach House"})
SPARKLE = newSongButton("闪耀", 27, {"你的名字 Radwimps"})
SPEAR_OF = newSongButton("正义之矛", 26, {})
SPECTRE = newSongButton("幽灵", 27, {"Alan Walker NCS"})
SPIDER_DANCE = newSongButton("蜘蛛舞", 27, {"Muffet"})
STAY = newSongButton("留下", 27, {"Justin Bieber Kid Laroi"})
STEREO_HEARTS = newSongButton("立体声之心", 27, {"Gym Class Heroes"})
STEREO_MADNESS = newSongButton("立体声疯狂", 27, {"几何冲刺 GD"})
STRANGER_THINGS = newSongButton("怪奇物语", 26, {})
STRANGERS = newSongButton("陌生人", 27, {"Kenya Grace"})
SUBWOOFER = newSongButton("低音摇篮曲", 20, {"C418"})
SUGAR_PLUM = newSongButton("糖梅仙子之舞", 13, {"圣诞 高难"})
SUNFLOWER = newSongButton("向日葵", 27, {"Post Malone"})
SUPER_IDOL = newSongButton("超级偶像", 27, {})
SUPER_MARIOS = newSongButton("超级马里奥", 23, {})
SUZUME = newSongButton("铃芽之旅", 22, {"Radwimps"})
SWEATER_WEATHER = newSongButton("毛衣天气", 23, {"流行 悲伤"})
SWIMMING = newSongButton("游泳", 27, {"Flawed Mangoes"})
SWEDEN = newSongButton("瑞典", 27, {"C418"})
THATS_WHAT_I_WANT = newSongButton("这就是我想要的", 23, {"Lil Nas X"})
AUTUMN = newSongButton("四季·秋", 18, {"维瓦尔第"})
SPRING = newSongButton("四季·春", 18, {"维瓦尔第"})
SUMMER = newSongButton("四季·夏", 18, {"维瓦尔第"})
WINTER = newSongButton("四季·冬", 18, {"维瓦尔第"})
THE_AMAZING_DIGITAL = newSongButton("神奇数字马戏团", 15, {"Pomni"})
THE_BEN = newSongButton("The Benoni", 27, {})
THE_ECSTASY_OF_GOLD = newSongButton("黄金狂喜", 22, {"黄金三镖客"})
THE_ENTERTAINER = newSongButton("表演者", 25, {})
THE_GREAT_FAIRY = newSongButton("大神殿喷泉", 17, {"塞尔达传说"})
THE_NIGHTS = newSongButton("那些夜晚", 27, {"Avicii"})
THE_SEARCH = newSongButton("寻找", 27, {"NF"})
THE_SLAUGHTER_CONT = newSongButton("杀戮继续", 16, {"传说之下"})
THE_WORLD = newSongButton("世界", 27, {"死亡笔记"})
THICK_OF_IT = newSongButton("乱局", 27, {"流行脏话"})
THIS_IS_WHAT_HEARTBREAK = newSongButton("这就是心碎的感觉", 11, {"Jvke"})
THIS_IS_WHAT_WINTER = newSongButton("这就是冬天的感觉", 11.5, {"Jvke"})
TICKING = newSongButton("滴答", 27, {})
TOXIC = newSongButton("Toxic", 22, {})
TRAP_R = newSongButton("陷阱之王", 27, {"Fetty Wap"})
TURKISH = newSongButton("土耳其进行曲", 27, {"莫扎特"})
UNDERSTAND = newSongButton("理解", 27, {"BoyWithUke"})
UNDERTALE = newSongButton("传说之下", 27, {})
UNDERWATER = newSongButton("水下女王", 14, {"Omori"})
UNITY = newSongButton("团结", 27, {"NCS 无版权"})
UNRAVEL = newSongButton("解开", 27, {"东京喰种"})
UNRAVEL_EPIC = newSongButton("解开（史诗版）", 22, {"Animenz"})
UNTITLED = newSongButton("无题", 27, {"煮熟 主题"})
VAMPIRE = newSongButton("吸血鬼", 27, {"Olivia Rodrigo"})
VIVA_LA_VIDA = newSongButton("生命万岁", 27, {"Coldplay"})
WAITING_FOR = newSongButton("等待爱情", 26, {"Avicii"})
WAKE_ME = newSongButton("唤醒我", 27, {"Avicii"})
WASHING = newSongButton("洗衣机心", 18, {"Mitski"})
WE_DONT = newSongButton("我们不谈布鲁诺", 15, {"魔法满屋"})
WEDDING_MARCH = newSongButton("婚礼进行曲", 27, {"婚礼"})
WET_HANDS = newSongButton("湿手", 27, {"C418"})
WHERE_WE = newSongButton("我们曾玩耍的地方", 25, {"Omori"})
WHY_DID_I_SAY = newSongButton("为什么我说好", 17, {"DDLC"})
WII_SPORTS_TITLE = newSongButton("Wii Sports 主题", 18, {"Wii"})
WINTER_WIND = newSongButton("冬风练习曲", 13, {"肖邦 高难"})
WORLDS_END = newSongButton("世界尽头情人节", 18, {"Omori"})
XO_TOUR = newSongButton("XO TOUR LLIF3", 27, {"Lil Uzi Vert"})
YOUNG_GIRL_A = newSongButton("年轻女孩A", 27, {"Vocaloid Siinamota"})
YOUNG_GIRL_A_2 = newSongButton("年轻女孩A（史诗版）", 16, {"Vocaloid"})
YOUR_REALITY = newSongButton("你的现实", 27, {"DDLC"})
YUUSHA = newSongButton("勇者（勇敢之人）", 22, {"Yoasobi Frieren"})
MANGOMANGOMANGO = newSongButton("芒果芒果芒果", 27, {})
DEATH_WALTZ = newSongButton("死亡华尔兹（警告）", 19, {})

local framebuttons = {}

for _, button in ipairs(frame:GetChildren()) do
    if button:IsA("TextButton") then
        table.insert(framebuttons, button)
    end
end

table.sort(
    framebuttons,
    function(a, b)
        return a.Name:lower() < b.Name:lower()
    end
)

for index, button in ipairs(framebuttons) do
    button.LayoutOrder = index
end

local songs = {
    {button = INTERSTELLAR, bpm = "104", var = false, url = "INTERSTELLAR", cat = {"epic", "beautiful"}},
    {button = RUSHE, bpm = "80", var = false, url = "RUSH_E", cat = {"memes"}},
    {button = GOLDENHOUR, bpm = "94", var = false, url = "GOLDEN_HOUR", cat = {"beautiful", "best"}},
    {button = CUPID, bpm = "120", var = false, url = "CUPID", cat = {"pop/hiphop"}},
    {button = RATDANCE, bpm = "120", var = false, url = "RAT_DANCE", cat = {"memes"}},
    {button = RUNAWAY, bpm = "85", var = false, url = "RUNAWAY", cat = {"pop/hiphop"}},
    {button = YOUR_REALITY, bpm = "105", var = false, url = "YOUR_REALITY", cat = {"video games", "beautiful", "best"}},
    {button = ANOTHER_LOVE, bpm = "123", var = false, url = "ANOTHER_LOVE", cat = {"sad", "best", "epic", "beautiful", "pop/hiphop"}},
    {button = FINAL_DUET, bpm = "84", var = false, url = "FINAL_DUET", cat = {"video games", "omori"}},
    {button = EXPERIENCE, bpm = "92", var = false, url = "EXPERIENCE", cat = {"epic", "best", "beautiful", "peak"}},
    {button = CAN_YOU_HEAR, bpm = "80", var = false, url = "CAN_YOU_HEAR_THE_FUCKING_MUSIC", cat = {"epic"}},
    {button = HOWLS_MOVING_CASTLE, bpm = "156", var = false, url = "HOWLS_MOVING_CASTLE", cat = {"anime/jpop", "beautiful"}},
    {button = YOUNG_GIRL_A, bpm = "130", var = false, url = "YOUNG_GIRL_A", cat = {"anime/jpop", "sad", "beautiful", "best"}},
    {button = ARIA_MATH, bpm = "84", var = false, url = "ARIA_MATH", cat = {"video games", "minecraft", "beautiful"}},
    {button = ALL_MY_FELLAS, bpm = "160", var = false, url = "ALL_MY_FELLAS", cat = {"memes"}},
    {button = THICK_OF_IT, bpm = "146", var = false, url = "THICK_OF_IT", cat = {"memes"}},
    {button = ROMANTIC_HOMICIDE, bpm = "132", var = false, url = "ROMANTIC_HOMICIDE", cat = {"sad"}},
    {button = IF_I_AM_WITH_YOU, bpm = "82", var = false, url = "IF_I_AM_WITH_YOU", cat = {"anime/jpop", "best", "beautiful", "peak"}},
    {button = CRADLES, bpm = "79", var = false, url = "CRADLES", cat = {"electronic"}},
    {button = IDOL, bpm = "166", var = false, url = "IDOL", cat = {"anime/jpop", "best"}},
    {button = RIVER_FLOWS, bpm = "137", var = false, url = "RIVER_FLOWS_IN_YOU", cat = {"sad"}},
    {button = NOCTURNE, bpm = "62", var = false, url = "NOCTURNE", cat = {"classical", "best"}},
    {button = ISABELLA, bpm = "112", var = false, url = "ISABELLAS_LULLABY", cat = {"video games"}},
    {button = GIORNO, bpm = "135", var = false, url = "GIORNO", cat = {"anime/jpop", "memes"}},
    {button = GIVE_UP, bpm = "113", var = false, url = "GIVE_UP", cat = {"memes", "pop/hiphop"}},
    {button = UNRAVEL, bpm = "135", var = false, url = "UNRAVEL", cat = {"anime/jpop", "beautiful"}},
    {button = WINTER_WIND, bpm = "125", var = false, url = "WINTER_WIND", cat = {"classical"}},
    {button = SWEATER_WEATHER, bpm = "124", var = false, url = "SWEATER_WEATHER", cat = {"sad"}},
    {button = VIVA_LA_VIDA, bpm = "138", var = false, url = "VIVA_LA_VIDA", cat = {"epic", "beautiful", "best"}},
    {button = M3, bpm = "163", var = false, url = "WHAT_THE_FUCKK", cat = {"classical", "best", "peak"}},
    {button = NEVER_MEANT, bpm = "66", var = false, url = "NEVER_MEANT", cat = {"anime/jpop"}},
    {button = AVENGERS, bpm = "120", var = false, url = "AVENGERS", cat = {"epic", "best"}},
    {button = BEETHOVEN_VIRUS, bpm = "162", var = false, url = "BEETHOVEN_VIRUS", cat = {"classical", "electronic", "best", "peak"}},
    {button = LA_CAMPANELLA, bpm = "107", var = false, url = "LA_CAMPANELLA", cat = {"classical", "best", "beautiful"}},
    {button = KEROSENE, bpm = "116", var = false, url = "KEROSENE", cat = {"electronic"}},
    {button = RACING_INTO, bpm = "129", var = false, url = "RACING_INTO", cat = {"anime/jpop", "best", "beautiful"}},
    {button = SURVIVE, bpm = "117", var = false, url = "SURVIVE", cat = {""}},
    {button = MEGALOVANIA, bpm = "120", var = false, url = "MEGALOVANIA", cat = {"video games", "undertale", "memes"}},
    {button = COCONUT, bpm = "132", var = false, url = "COCONUT", cat = {"video games"}},
    {button = FADED, bpm = "90", var = false, url = "FADED", cat = {"electronic", "sad"}},
    {button = SOLAS, bpm = "120", var = false, url = "SOLAS", cat = {"beautiful"}},
    {button = MARRIED, bpm = "83", var = false, url = "MARRIED", cat = {"sad"}},
    {button = BAD_PIGGIES, bpm = "156", var = false, url = "BAD_PIGGIES", cat = {"video games"}},
    {button = ASGORE, bpm = "115", var = false, url = "ASGORE", cat = {"video games", "undertale"}},
    {button = CARELESS, bpm = "153", var = false, url = "CARELESS", cat = {"memes"}},
    {button = I_WANT, bpm = "122", var = false, url = "I_WANT", cat = {"pop/hiphop", "rock"}},
    {button = IM_STILL, bpm = "177", var = false, url = "IM_STILL", cat = {"best", "rock"}},
    {button = HELLO, bpm = "105", var = false, url = "HELLO", cat = {"electronic"}},
    {button = BAD_APPLE, bpm = "138", var = false, url = "BAD_APPLE", cat = {"anime/jpop"}},
    {button = FR, bpm = "82", var = false, url = "FR", cat = {"all"}},
    {button = DIE_WITH, bpm = "152", var = false, url = "DIE_WITH", cat = {"pop/hiphop", "sad", "beautiful", "best", "peak"}},
    {button = FALLEN_DOWN, bpm = "110", var = false, url = "FALLEN_DOWN", cat = {"video games", "undertale", "beautiful"}},
    {button = ENIGMATIC, bpm = "50", var = false, url = "ENIGMATIC", cat = {"video games", "undertale", "best", "peak"}},
    {button = DEATH_WALTZ, bpm = "210", var = false, url = "DEATH_WALTZ", cat = {"all"}},
    {button = MIKU, bpm = "135", var = false, url = "MIKU", cat = {"anime/jpop"}},
    {button = A_THOUSAND, bpm = "100", var = false, url = "A_THOUSAND", cat = {"pop/hiphop"}},
    {button = SUGAR_PLUM, bpm = "70", var = false, url = "SUGAR_PLUM", cat = {"classical"}},
    {button = SPEED_OF, bpm = "162", var = false, url = "SPEED_OF", cat = {"video games", "electronic", "epic", "best", "peak"}},
    {button = WET_HANDS, bpm = "74", var = false, url = "WET_HANDS", cat = {"video games", "minecraft", "beautiful"}},
    {button = SWEDEN, bpm = "44", var = false, url = "SWEDEN", cat = {"video games", "minecraft"}},
    {button = SUBWOOFER, bpm = "76", var = false, url = "SUBWOOFER", cat = {"video games", "minecraft"}},
    {button = MICE_ON, bpm = "56", var = false, url = "MICE_ON", cat = {"video games", "minecraft", "sad"}},
    {button = DRY_HANDS, bpm = "90", var = false, url = "DRY_HANDS", cat = {"video games", "minecraft", "beautiful"}},
    {button = HAGGSTORM, bpm = "102", var = false, url = "HAGGSTORM", cat = {"video games", "minecraft"}},
    {button = LIVING_MICE, bpm = "74", var = false, url = "LIVING_MICE", cat = {"video games", "minecraft"}},
    {button = KEY, bpm = "70", var = false, url = "KEY", cat = {"video games", "minecraft", "beautiful"}},
    {button = MOOG_CITY, bpm = "116", var = false, url = "MOOG_CITY", cat = {"video games", "minecraft", "beautiful", "best"}},
    {button = MINECRAFT, bpm = "106", var = false, url = "MINECRAFT", cat = {"video games", "minecraft"}},
    {button = UNDERTALE, bpm = "100", var = false, url = "UNDERTALE", cat = {"video games", "undertale", "best", "epic"}},
    {button = HOPES_DREAMS, bpm = "170", var = false, url = "HOPES_DREAMS", cat = {"video games", "undertale", "best", "epic", "peak"}},
    {button = NYEH, bpm = "150", var = false, url = "NYEH", cat = {"video games", "undertale", "best"}},
    {button = SPIDER_DANCE, bpm = "115", var = false, url = "SPIDER_DANCE", cat = {"video games", "undertale"}},
    {button = HEARTACHE, bpm = "160", var = false, url = "HEARTACHE", cat = {"video games", "undertale"}},
    {button = BATTLE_AGAINST, bpm = "150", var = false, url = "BATTLE_AGAINST", cat = {"video games", "undertale"}},
    {button = HIS_THEME, bpm = "90", var = false, url = "HIS_THEME", cat = {"video games", "undertale"}},
    {button = SNOWY, bpm = "120", var = false, url = "SNOWY", cat = {"video games", "undertale"}},
    {button = SPEAR_OF, bpm = "130", var = false, url = "SPEAR_OF", cat = {"video games", "undertale", "best"}},
    {button = DOG_SONG, bpm = "230", var = false, url = "DOG_SONG", cat = {"video games", "undertale"}},
    {button = ONCE_UPON, bpm = "65", var = false, url = "ONCE_UPON", cat = {"video games", "undertale"}},
    {button = NOT_A_SLACKER, bpm = "145", var = false, url = "NOT_A_SLACKER", cat = {"video games", "undertale"}},
    {button = SHOP, bpm = "77", var = false, url = "SHOP", cat = {"video games", "undertale"}},
    {button = FINALE, bpm = "190", var = false, url = "FINALE", cat = {"video games", "undertale"}},
    {button = BY_YOUR_SIDE, bpm = "88", var = false, url = "BY_YOUR_SIDE", cat = {"video games", "omori"}},
    {button = WORLDS_END, bpm = "152", var = false, url = "WORLDS_END", cat = {"video games", "omori", "best"}},
    {button = LOST_LIBRARY, bpm = "62", var = false, url = "LOST_LIBRARY", cat = {"video games", "omori"}},
    {button = BREADY, bpm = "160", var = false, url = "BREADY", cat = {"video games", "omori", "best"}},
    {button = IT_MEANS, bpm = "96", var = false, url = "IT_MEANS", cat = {"video games", "omori"}},
    {button = UNDERWATER, bpm = "160", var = false, url = "UNDERWATER", cat = {"video games", "omori"}},
    {button = WHERE_WE, bpm = "96", var = false, url = "WHERE_WE", cat = {"video games", "omori"}},
    {button = MARI_BOSS, bpm = "169", var = false, url = "MARI_BOSS", cat = {"video games", "omori"}},
    {button = GOOD_MORNING, bpm = "90", var = false, url = "GOOD_MORNING", cat = {"video games", "omori"}},
    {button = FUR_ELISE, bpm = "72", var = false, url = "FUR_ELISE", cat = {"classical"}},
    {button = MOONLIGHT, bpm = "51", var = false, url = "MOONLIGHT", cat = {"classical"}},
    {button = FANTAISIE, bpm = "168", var = false, url = "FANTAISIE", cat = {"classical"}},
    {button = DROWNING_LOVE, bpm = "112", var = false, url = "DROWNING_LOVE", cat = {"beautiful", "sad", "best", "peak"}},
    {button = CANON_D, bpm = "100", var = false, url = "CANON_D", cat = {"classical"}},
    {button = FREEDOM_DIVE, bpm = "220", var = false, url = "FREEDOM_DIVE", cat = {"electronic"}},
    {button = STAY, bpm = "85", var = false, url = "STAY", cat = {"pop/hiphop"}},
    {button = TURKISH, bpm = "92", var = false, url = "TURKISH", cat = {"classical"}},
    {button = SUPER_MARIOS, bpm = "180", var = false, url = "SUPER_MARIOS", cat = {"video games", "memes"}},
    {button = MII, bpm = "114", var = false, url = "MII", cat = {"video games", "memes"}},
    {button = LACRIMOSA, bpm = "64", var = false, url = "LACRIMOSA", cat = {"classical", "memes"}},
    {button = DESPACITO, bpm = "89", var = false, url = "DESPACITO", cat = {"pop/hiphop", "memes"}},
    {button = WE_DONT, bpm = "103", var = false, url = "WE_DONT", cat = {}},
    {button = HUNGARIAN, bpm = "130", var = false, url = "HUNGARIAN", cat = {"classical"}},
    {button = SKYFALL, bpm = "70", var = false, url = "SKYFALL", cat = {"epic", "best"}},
    {button = THE_ENTERTAINER, bpm = "60", var = false, url = "THE_ENTERTAINER", cat = {"memes", "best"}},
    {button = DONT_STOP, bpm = "118", var = false, url = "DONT_STOP", cat = {"rock", "best"}},
    {button = DREAM_ON, bpm = "78", var = false, url = "DREAM_ON", cat = {"rock"}},
    {button = HIT_THE_ROAD, bpm = "60", var = false, url = "HIT_THE_ROAD", cat = {"rock"}},
    {button = TOXIC, bpm = "180", var = false, url = "TOXIC", cat = {"sad", "pop/hiphop"}},
    {button = UNDERSTAND, bpm = "206", var = false, url = "UNDERSTAND", cat = {"sad"}},
    {button = SICK_OF_U, bpm = "185", var = false, url = "SICK_OF_U", cat = {"sad"}},
    {button = IDGAF, bpm = "196", var = false, url = "IDGAF", cat = {"sad"}},
    {button = EASY_ON_ME, bpm = "73", var = false, url = "EASY_ON_ME", cat = {"", "pop/hiphop"}},
    {button = METAMORPH, bpm = "180", var = false, url = "METAMORPH", cat = {"electronic"}},
    {button = SWIMMING, bpm = "165", var = false, url = "SWIMMING", cat = {"beautiful", "best"}},
    {button = DRAMAM, bpm = "224", var = false, url = "DRAMAM", cat = {"beautiful"}},
    {button = LOST_UMB, bpm = "133", var = false, url = "LOST_UMB", cat = {"electronic", "anime/jpop"}},
    {button = LOVELY_B, bpm = "150", var = false, url = "LOVELY_B", cat = {"memes", "best"}},
    {button = TRAP_R, bpm = "151", var = false, url = "TRAP_R", cat = {"memes", "epic", "best", "beautiful"}},
    {button = MANGOMANGOMANGO, bpm = "110", var = false, url = "MANGOMANGOMANGO", cat = {"peak"}},
    {button = DREAM_FL, bpm = "150", var = false, url = "DREAM_FL", cat = {"electronic"}},
    {button = LALALA, bpm = "130", var = false, url = "LALALA", cat = {"pop/hiphop"}},
    {button = THE_BEN, bpm = "180", var = false, url = "THE_BEN", cat = {"classical", "epic", "best"}},
    {button = POKEMON, bpm = "160", var = false, url = "POKEMON", cat = {"video games", "anime/jpop"}},
    {button = POKEMON_RED, bpm = "180", var = false, url = "POKEMON_RED", cat = {"video games", "anime/jpop"}},
    {button = FLASHING, bpm = "100", var = false, url = "FLASHING", cat = {"pop/hiphop", "epic", "beautiful"}},
    {button = ALL_GIRLS, bpm = "85", var = false, url = "ALL_GIRLS", cat = {"pop/hiphop", "sad", "best"}},
    {button = SAVE_YOUR, bpm = "120", var = false, url = "SAVE_YOUR", cat = {"pop/hiphop", "sad"}},
    {button = LIGHTS, bpm = "132", var = false, url = "LIGHTS", cat = {"anime/jpop"}},
    {button = THE_WORLD, bpm = "96", var = false, url = "THE_WORLD", cat = {"anime/jpop", "rock"}},
    {button = L, bpm = "71", var = false, url = "L", cat = {"anime/jpop", "memes"}},
    {button = BLOODY, bpm = "100", var = false, url = "BLOODY", cat = {"pop/hiphop", "epic", "best"}},
    {button = SPACE_SONG, bpm = "75", var = false, url = "SPACE_SONG", cat = {"sad", "pop/hiphop", "beautiful", "epic", "best"}},
    {button = HEATHENS, bpm = "90", var = false, url = "HEATHENS", cat = {"sad"}},
    {button = VAMPIRE, bpm = "135", var = false, url = "VAMPIRE", cat = {"pop/hiphop", "sad", "best"}},
    {button = MARY_ON, bpm = "130", var = false, url = "MARY_ON", cat = {"rock"}},
    {button = RUNNING_UP, bpm = "108", var = false, url = "RUNNING_UP", cat = {"sad", "pop/hiphop"}},
    {button = DUMB_DUMB, bpm = "118", var = false, url = "DUMB_DUMB", cat = {"memes"}},
    {button = MA_MEILLEUR, bpm = "178", var = false, url = "MA_MEILLEUR", cat = {"memes"}},
    {button = SUZUME, bpm = "78", var = false, url = "SUZUME", cat = {"anime/jpop", "best", "beautiful"}},
    {button = CHRISTMAS_KIDS, bpm = "152", var = false, url = "CHRISTMAS_KIDS", cat = {"sad"}},
    {button = DARK_BEACH, bpm = "130", var = false, url = "DARK_BEACH", cat = {"sad", "beautiful"}},
    {button = FUKASHIGI, bpm = "90", var = false, url = "FUKASHIGI", cat = {"anime/jpop"}},
    {button = SPARKLE, bpm = "192", var = false, url = "SPARKLE", cat = {"anime/jpop", "best", "beautiful"}},
    {button = SHIKAIRO, bpm = "182", var = false, url = "SHIKAIRO", cat = {"anime/jpop", "memes", "best"}},
    {button = WASHING, bpm = "114", var = false, url = "WASHING", cat = {"sad"}},
    {button = CAN_YOU_HEAR_EPIC, bpm = "102", var = false, url = "CAN_YOU_HEAR_EPIC", cat = {"epic", "best", "peak"}},
    {button = UNRAVEL_EPIC, bpm = "132", var = false, url = "UNRAVEL_EPIC", cat = {"epic", "best", "beautiful", "peak"}},
    {button = A_SKY_FULL, bpm = "120", var = false, url = "A_SKY_FULL", cat = {"epic", "pop/hiphop"}},
    {button = THE_NIGHTS, bpm = "128", var = false, url = "THE_NIGHTS", cat = {"pop/hiphop", "electronic", "epic"}},
    {button = BIRDS_OF_A, bpm = "105", var = false, url = "BIRDS_OF_A", cat = {"pop/hiphop", "beautiful"}},
    {button = CANT_LET, bpm = "160", var = false, url = "CANT_LET", cat = {"video games", "electronic"}},
    {button = DEADLOCKED, bpm = "140", var = false, url = "DEADLOCKED", cat = {"video games", "electronic"}},
    {button = DUVET, bpm = "91", var = false, url = "DUVET", cat = {"sad", "beautiful", "best"}},
    {button = FIVE_NIGHTS_1, bpm = "108", var = false, url = "FIVE_NIGHTS_1", cat = {"video games", "electronic", "epic"}},
    {button = ITS_BEEN_SO, bpm = "96", var = false, url = "ITS_BEEN_SO", cat = {"video games", "electronic"}},
    {button = STEREO_MADNESS, bpm = "160", var = false, url = "STEREO_MADNESS", cat = {"video games", "electronic"}},
    {button = SUNFLOWER, bpm = "90", var = false, url = "SUNFLOWER", cat = {"pop/hiphop", "beautiful", "best"}},
    {button = WAITING_FOR, bpm = "129", var = false, url = "WAITING_FOR", cat = {"pop/hiphop", "electronic", "best", "epic"}},
    {button = WAKE_ME, bpm = "110", var = false, url = "WAKE_ME", cat = {"pop/hiphop", "electronic"}},
    {button = GEOMETRY_DASH, bpm = "128", var = false, url = "GEOMETRY_DASH", cat = {"video games", "electronic"}},
    {button = ARUARIAN, bpm = "80", var = false, url = "ARUARIAN", cat = {"beautiful"}},
    {button = DAYLIGHT, bpm = "130", var = false, url = "DAYLIGHT", cat = {"beautiful", "epic", "best"}},
    {button = SHIAWASE, bpm = "150", var = false, url = "SHIAWASE", cat = {"electronic", "epic", "beautiful", "best"}},
    {button = EVERGREEN, bpm = "120", var = false, url = "EVERGREEN", cat = {"beautiful", "best"}},
    {button = FREAKS, bpm = "175", var = false, url = "FREAKS", cat = {"sad", "rock", "beautiful"}},
    {button = HERE_WITH, bpm = "132", var = false, url = "HERE_WITH", cat = {"sad"}},
    {button = RESONANCE, bpm = "70", var = false, url = "RESONANCE", cat = {"beautiful", "best"}},
    {button = INSANE, bpm = "105", var = false, url = "INSANE", cat = {"electronic"}},
    {button = LEVELS, bpm = "122", var = false, url = "LEVELS", cat = {"electronic", "levels", "best"}},
    {button = MOOD, bpm = "91", var = false, url = "MOOD", cat = {"pop/hiphop", "best"}},
    {button = SOMETHING_JUST, bpm = "103", var = false, url = "SOMETHING_JUST", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = STRANGERS, bpm = "170", var = false, url = "STRANGERS", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = TICKING, bpm = "77", var = false, url = "TICKING", cat = {"epic", "best", "beautiful"}},
    {button = AFTER_DARK, bpm = "140", var = false, url = "AFTER_DARK", cat = {"sad", "beautiful"}},
    {button = ANYONE_CAN, bpm = "100", var = false, url = "ANYONE_CAN", cat = {"sad"}},
    {button = BLUE, bpm = "130", var = false, url = "BLUE", cat = {"pop/hiphop"}},
    {button = CLOUD_9, bpm = "128", var = false, url = "CLOUD_9", cat = {"electronic"}},
    {button = DAMNED, bpm = "95", var = false, url = "DAMNED", cat = {"video games"}},
    {button = ASTRONAMIA, bpm = "120", var = false, url = "ASTRONAMIA", cat = {"memes", "electronic"}},
    {button = COUNTING_STARS, bpm = "105", var = false, url = "COUNTING_STARS", cat = {"pop/hiphop", "sad"}},
    {button = SHAPE_OF, bpm = "190", var = false, url = "SHAPE_OF", cat = {"pop/hiphop"}},
    {button = ENEMY, bpm = "77", var = false, url = "ENEMY", cat = {"pop/hiphop"}},
    {button = FLARE, bpm = "150", var = false, url = "FLARE", cat = {"electronic"}},
    {button = THIS_IS_WHAT_WINTER, bpm = "115", var = false, url = "THIS_IS_WHAT_WINTER", cat = {"beautiful", "pop/hiphop", "best"}},
    {button = HEAT_WAVE, bpm = "81", var = false, url = "HEAT_WAVE", cat = {"pop/hiphop"}},
    {button = HIGH_HOPES, bpm = "164", var = false, url = "HIGH_HOPES", cat = {"pop/hiphop", "epic"}},
    {button = HOUSE_OF, bpm = "112", var = false, url = "HOUSE_OF", cat = {"pop/hiphop"}},
    {button = IN_THE_NAME, bpm = "134", var = false, url = "IN_THE_NAME", cat = {"pop/hiphop", "electronic", "best", "epic", "beautiful"}},
    {button = PAST_LIVES, bpm = "110", var = false, url = "PAST_LIVES", cat = {"sad", "beautiful"}},
    {button = SLAY, bpm = "120", var = false, url = "SLAY", cat = {"electronic"}},
    {button = SNOWFALL, bpm = "96", var = false, url = "SNOWFALL", cat = {"beautiful", "sad", "best"}},
    {button = RISE_UP, bpm = "82", var = false, url = "RISE_UP", cat = {"electronic", "epic"}},
    {button = UNITY, bpm = "110", var = false, url = "UNITY", cat = {"electronic", "best"}},
    {button = MONODY, bpm = "107", var = false, url = "MONODY", cat = {"electronic", "epic", "best"}},
    {button = THIS_IS_WHAT_HEARTBREAK, bpm = "50", var = false, url = "THIS_IS_WHAT_HEARTBREAK", cat = {"sad", "pop/hiphop"}},
    {button = CANDYLAND, bpm = "130", var = false, url = "CANDYLAND", cat = {"electronic", "best", "best"}},
    {button = AS_IT_WAS, bpm = "174", var = false, url = "AS_IT_WAS", cat = {"pop/hiphop", "best"}},
    {button = CENTIMETER, bpm = "140", var = false, url = "CENTIMETER", cat = {"anime/jpop"}},
    {button = DETROIT, bpm = "60", var = false, url = "DETROIT", cat = {"video games", "beautiful"}},
    {button = THE_GREAT_FAIRY, bpm = "80", var = false, url = "THE_GREAT_FAIRY", cat = {"video games"}},
    {button = IMMORTAL, bpm = "60", var = false, url = "IMMORTAL", cat = {"pop/hiphop"}},
    {button = XO_TOUR, bpm = "142", var = false, url = "XO_TOUR", cat = {"pop/hiphop", "sad"}},
    {button = THE_ECSTASY_OF_GOLD, bpm = "85", var = false, url = "THE_ECSTASY_OF_GOLD", cat = {"epic", "beautiful"}},
    {button = BLUE_YUNG, bpm = "92", var = false, url = "BLUE_YUNG", cat = {"beautiful", "best"}},
    {button = HES_A_PIRATE, bpm = "207", var = false, url = "HES_A_PIRATE", cat = {"epic", "best"}},
    {button = ITS_RAINING, bpm = "120", var = false, url = "ITS_RAINING", cat = {"memes"}},
    {button = LET_ME_LOVE, bpm = "100", var = false, url = "LET_ME_LOVE", cat = {"pop/hiphop", "best", "beautiful"}},
    {button = HAPPIER, bpm = "100", var = false, url = "HAPPIER", cat = {"pop/hiphop", "sad", "beautiful", "best"}},
    {button = SANS, bpm = "120", var = false, url = "SANS", cat = {"video games", "undertale", "memes"}},
    {button = THE_SLAUGHTER_CONT, bpm = "150", var = false, url = "THE_SLAUGHTER_CONT", cat = {"video games", "undertale"}},
    {button = SONG_THAT_MIGHT, bpm = "120", var = false, url = "SONG_THAT_MIGHT", cat = {"video games", "undertale"}},
    {button = ASSUMPTIONS, bpm = "126", var = false, url = "ASSUMPTIONS", cat = {"pop/hiphop", "memes", "electronic"}},
    {button = DEATH_BED, bpm = "120", var = false, url = "DEATH_BED", cat = {"pop/hiphop", "sad", "beautiful"}},
    {button = DAWN_OF, bpm = "72", var = false, url = "DAWN_OF", cat = {"video games"}},
    {button = ELEVATOR_JAM, bpm = "146", var = false, url = "ELEVATOR_JAM", cat = {"video games"}},
    {button = ELEVATOR_JAM_2, bpm = "146", var = false, url = "ELEVATOR_JAM_2", cat = {"video games", "epic", "best"}},
    {button = HERE_I_COME, bpm = "144", var = false, url = "HERE_I_COME", cat = {"video games"}},
    {button = MONTAGEM_TOMADA, bpm = "120", var = false, url = "MONTAGEM_TOMADA", cat = {"electronic"}},
    {button = NOTION, bpm = "160", var = false, url = "NOTION", cat = {"rock", "sad"}},
    {button = RISES_THE, bpm = "127", var = false, url = "RISES_THE", cat = {"sad", "beautiful"}},
    {button = HIMITSU_KOI_GOKORO, bpm = "165", var = false, url = "HIMITSU_KOI_GOKORO", cat = {"anime/jpop"}},
    {button = LENAI, bpm = "131", var = false, url = "LENAI", cat = {"anime/jpop"}},
    {button = IDOL_EPIC, bpm = "166", var = false, url = "IDOL_EPIC", cat = {"anime/jpop", "epic", "best"}},
    {button = ALL_THE_STARS, bpm = "120", var = false, url = "ALL_THE_STARS", cat = {"pop/hiphop", "beautiful", "best"}},
    {button = HOPE, bpm = "146", var = false, url = "HOPE", cat = {"pop/hiphop", "sad", "beautiful", "best"}},
    {button = ENTRY_OF_THE, bpm = "220", var = false, url = "ENTRY_OF_THE", cat = {"classical", "memes"}},
    {button = LUTHER, bpm = "128", var = false, url = "LUTHER", cat = {"pop/hiphop"}},
    {button = HOWLS_MOVING_CASTLE_2, bpm = "130", var = false, url = "HOWLS_MOVING_CASTLE_2", cat = {"anime/jpop", "beautiful", "best", "epic", "peak"}},
    {button = MAGICAL_CURE, bpm = "120", var = false, url = "MAGICAL_CURE", cat = {"anime/jpop"}},
    {button = NOT_LIKE_US, bpm = "101", var = false, url = "NOT_LIKE_US", cat = {"pop/hiphop", "memes"}},
    {button = PEACHES, bpm = "92", var = false, url = "PEACHES", cat = {"video games"}},
    {button = PRAYER, bpm = "147", var = false, url = "PRAYER", cat = {"beautiful", "pop/hiphop"}},
    {button = SEE_YOU_AGAIN, bpm = "70", var = false, url = "SEE_YOU_AGAIN", cat = {"pop/hiphop", "sad", "beautiful"}},
    {button = GANGSTAS_PARADISE, bpm = "80", var = false, url = "GANGSTAS_PARADISE", cat = {"pop/hiphop", "memes", "beautiful", "best", "epic", "peak"}},
    {button = ERIKA, bpm = "120", var = false, url = "ERIKA", cat = {"memes"}},
    {button = ITS_JUST_A_BURNING, bpm = "74", var = false, url = "ITS_JUST_A_BURNING", cat = {"memes", "sad"}},
    {button = ALL_I_WANT_IS_YOU, bpm = "143", var = false, url = "ALL_I_WANT_IS_YOU", cat = {"pop/hiphop", "sad", "best", "electronic"}},
    {button = SOVIET_UNION_ANTHEM, bpm = "80", var = false, url = "SOVIET_UNION_ANTHEM", cat = {"memes"}},
    {button = UNTITLED, bpm = "25", var = false, url = "UNTITLED", cat = {"video games", "memes", "sad"}},
    {button = WEDDING_MARCH, bpm = "115", var = false, url = "WEDDING_MARCH", cat = {"memes", "beautiful", "classical"}},
    {button = WHY_DID_I_SAY, bpm = "113", var = false, url = "WHY_DID_I_SAY", cat = {}},
    {button = WII_SPORTS_TITLE, bpm = "115", var = false, url = "WII_SPORTS_TITLE", cat = {"video games", "memes", "epic"}},
    {button = YOUNG_GIRL_A_2, bpm = "130", var = false, url = "YOUNG_GIRL_A_2", cat = {"anime/jpop", "sad", "epic", "best", "beautiful", "peak"}},
    {button = BLINDING_LIGHTS, bpm = "171", var = false, url = "BLINDING_LIGHTS", cat = {"pop/hiphop", "best"}},
    {button = GOOFY_AHH, bpm = "120", var = false, url = "GOOFY_AHH", cat = {"memes", "epic", "best", "beautiful", "peak"}},
    {button = GRAVITY_FALLS, bpm = "120", var = false, url = "GRAVITY_FALLS", cat = {"memes", "best"}},
    {button = GYPSY_WOMAN, bpm = "120", var = false, url = "GYPSY_WOMAN", cat = {"memes", "pop/hiphop"}},
    {button = I_LIKE_THE_WAY_YOU, bpm = "151", var = false, url = "I_LIKE_THE_WAY_YOU", cat = {"pop/hiphop", "sad", "best", "beautiful"}},
    {button = ISOLATION, bpm = "100", var = false, url = "ISOLATION", cat = {"best", "epic", "video games", "peak"}},
    {button = KAWAIKUTEGOMEN, bpm = "160", var = false, url = "KAWAIKUTEGOMEN", cat = {"anime/jpop", "best"}},
    {button = LIGHT_SWITCH, bpm = "184", var = false, url = "LIGHT_SWITCH", cat = {"pop/hiphop"}},
    {button = SPECTRE, bpm = "128", var = false, url = "SPECTRE", cat = {"electronic", "memes", "beautiful", "best"}},
    {button = SUPER_IDOL, bpm = "136", var = false, url = "SUPER_IDOL", cat = {"memes"}},
    {button = THATS_WHAT_I_WANT, bpm = "85", var = false, url = "THATS_WHAT_I_WANT", cat = {"pop/hiphop"}},
    {button = THE_AMAZING_DIGITAL, bpm = "110", var = false, url = "THE_AMAZING_DIGITAL", cat = {"best"}},
    {button = JOCELYN_FLORES, bpm = "136", var = false, url = "JOCELYN_FLORES", cat = {"sad", "beautiful"}},
    {button = FLY_ME_TO_THE_MOON, bpm = "140", var = false, url = "FLY_ME_TO_THE_MOON", cat = {"classical", "beautiful"}},
    {button = BAD_HABIT, bpm = "80", var = false, url = "BAD_HABIT", cat = {"pop/hiphop", "sad"}},
    {button = SOMEBODY_THAT_I_USED, bpm = "120", var = false, url = "SOMEBODY_THAT_I_USED", cat = {"pop/hiphop", "sad"}},
    {button = LEVAN_POLKKA, bpm = "135", var = false, url = "LEVAN_POLKKA", cat = {"memes"}},
    {button = MY_ORDINARY_LIFE, bpm = "130", var = false, url = "MY_ORDINARY_LIFE", cat = {"electronic"}},
    {button = RUINS, bpm = "138", var = false, url = "RUINS", cat = {"video games", "undertale"}},
    {button = STEREO_HEARTS, bpm = "96", var = false, url = "STEREO_HEARTS", cat = {"pop/hiphop", "best"}},
    {button = STRANGER_THINGS, bpm = "80", var = false, url = "STRANGER_THINGS", cat = {}},
    {button = HH, bpm = "150", var = false, url = "HH", cat = {"memes", "peak"}},
    {button = A505, bpm = "140", var = false, url = "505", cat = {"rock", "sad"}},
    {button = BELIEVER, bpm = "188", var = false, url = "BELIEVER", cat = {"rock", "pop/hiphop", "epic"}},
    {button = CLUBSTEP, bpm = "128", var = false, url = "CLUBSTEP", cat = {"video games", "electronic"}},
    {button = EXPERIENCE_FLOWS, bpm = "85", var = false, url = "EXPERIENCE_FLOWS", cat = {"beautiful", "best"}},
    {button = FIELD_OF_MEMORIES, bpm = "130", var = false, url = "FIELD_OF_MEMORIES", cat = {"video games", "electronic", "epic"}},
    {button = SKELETAL_SHENANIGANS, bpm = "158", var = false, url = "SKELETAL_SHENANIGANS", cat = {"video games", "electronic"}},
    {button = GODS_PLAN, bpm = "130", var = false, url = "GODS_PLAN", cat = {"pop/hiphop"}},
    {button = HOTLINE_BLING, bpm = "100", var = false, url = "HOTLINE_BLING", cat = {"pop/hiphop"}},
    {button = I_REALLY_WANT_TO_STAY, bpm = "128", var = false, url = "I_REALLY_WANT_TO_STAY", cat = {"pop/hiphop", "beautiful", "electronic"}},
    {button = ICARUS, bpm = "100", var = false, url = "ICARUS", cat = {"beautiful"}},
    {button = LAVENDER_TOWN, bpm = "120", var = false, url = "LAVENDER_TOWN", cat = {"video games", "memes"}},
    {button = ALONE, bpm = "142", var = false, url = "ALONE", cat = {"electronic"}},
    {button = FRIENDS, bpm = "95", var = false, url = "FRIENDS", cat = {"pop/hiphop", "electronic"}},
    {button = MIDDLE_OF_THE_NIGHT, bpm = "93", var = false, url = "MIDDLE_OF_THE_NIGHT", cat = {"pop/hiphop", "epic", "beautiful", "best"}},
    {button = A99DOT9, bpm = "180", var = false, url = "99DOT9", cat = {"anime/jpop"}},
    {button = MY_EYES, bpm = "120", var = false, url = "MY_EYES", cat = {"pop/hiphop", "beautiful", "best"}},
    {button = CRAB_RAVE, bpm = "125", var = false, url = "CRAB_RAVE", cat = {"memes", "electronic", "epic"}},
    {button = ONE_DANCE, bpm = "108", var = false, url = "ONE_DANCE", cat = {"pop/hiphop"}},
    {button = RAIN, bpm = "77", var = false, url = "RAIN", cat = {"beautiful", "best", "epic"}},
    {button = RUSH_OF_LIFE, bpm = "122", var = false, url = "RUSH_OF_LIFE", cat = {"beautiful", "epic", "best", "peak"}},
    {button = THE_SEARCH, bpm = "120", var = false, url = "THE_SEARCH", cat = {"pop/hiphop", "epic", "beautiful", "best"}},
    {button = MICHAEL_MYERS, bpm = "144", var = false, url = "MICHAEL_MYERS", cat = {"memes"}},
    {button = YUUSHA, bpm = "208", var = false, url = "YUUSHA", cat = {"anime/jpop"}},
    {button = CAROL_OF_THE_BELLS_EPIC, bpm = "135", var = false, url = "CAROL_OF_THE_BELLS_EPIC", cat = {"classical", "epic", "beautiful", "best"}},
    {button = CAROL_OF_THE_BELLS, bpm = "50", var = false, url = "CAROL_OF_THE_BELLS", cat = {"classical", "beautiful", "best"}},
    {button = CLAIR_DE_LUNE, bpm = "48", var = false, url = "CLAIR_DE_LUNE", cat = {"classical", "beautiful"}},
    {button = OLD_TOWN_ROAD, bpm = "69", var = false, url = "OLD_TOWN_ROAD", cat = {"pop/hiphop", "memes"}},
    {button = HATSUNE_MIKU_NO_GEKISHOU, bpm = "200", var = false, url = "HATSUNE_MIKU_NO_GEKISHOU", cat = {"anime/jpop", "best", "epic"}},
    {button = AUTUMN, bpm = "80", var = false, url = "AUTUMN", cat = {"classical"}},
    {button = WINTER, bpm = "136", var = false, url = "WINTER", cat = {"classical", "best", "beautiful", "epic", "peak"}},
    {button = SPRING, bpm = "100", var = false, url = "SPRING", cat = {"classical", "video games", "memes", "best"}},
    {button = SUMMER, bpm = "150", var = false, url = "SUMMER", cat = {"classical", "epic", "best", "beautiful", "peak"}},



    --[[

    {button = , bpm = "", var = false, url = "", cat = {""}}

]]
}

for _, song in ipairs(songs) do
    print("song loaded: " .. song.button.Name)
end

local categories = {
"peak",
    "best",
    "epic",
    "beautiful",
    "video games",
    "memes",
    "classical",
    "anime/jpop",
    "pop/hiphop",
    "sad",
    "electronic",
    "rock",
    "undertale",
    "minecraft",
    "omori"
} -- The main table for unique categories

local folderexists = false
local customsongs = {}

print("initiating buttons")

print("fetching songs")

local specsong = {button = AVRIL_14, bpm = "79", var = false, url = "https://pastefy.app/NY5KqR8m/raw", cat = {}}
if game.Players.LocalPlayer.Name == "4BCQA" then
    table.insert(songs, specsong)
end

local customnotice = Instance.new("TextLabel")
customnotice.Name = "customnotice"
customnotice.Parent = scroll
customnotice.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
customnotice.BorderColor3 = Color3.fromRGB(64, 68, 90)
customnotice.BorderSizePixel = 4
customnotice.Size = UDim2.new(0, 175, 0, 75)
customnotice.Font = Enum.Font.SourceSansBold
customnotice.Text = "Your executor may not support this feature."
customnotice.TextColor3 = Color3.fromRGB(255, 255, 255)
customnotice.TextSize = 25.000
customnotice.TextWrapped = true

local function newcat(name)
    local TextButton = Instance.new("TextButton")
    TextButton.Parent = categoriesFrame
    TextButton.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    TextButton.BorderColor3 = Color3.fromRGB(64, 68, 90)
    TextButton.BorderSizePixel = 2
    TextButton.Size = UDim2.new(0, 100, 0, 25)
    TextButton.Font = Enum.Font.SourceSansBold
    TextButton.Text = name
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14.000

    return TextButton
end

local customcat = newcat("custom songs (0)")

customcat.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)
        for _, song in ipairs(songs) do
            song.button.Visible = false
        end

        for _, song in ipairs(customsongs) do
            song.Visible = true
        end

        PLAYRANDOM.Visible = false
        LOOPRANDOM.Visible = false
        customnotice.Visible = true
    end
)

function updatecustomcount()
    customcat.Text = "custom songs (" .. tostring(#customsongs - 1) .. ")"
end

local othercats = newcat("other")

othercats.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)
        for _, song in ipairs(songs) do
            song.button.Visible = false
        end
        for _, song in ipairs(customsongs) do
            song.Visible = false
        end

        PLAYRANDOM.Visible = true
        LOOPRANDOM.Visible = true
        customnotice.Visible = false
    end
)

local allcats = newcat("all (" .. tostring(#songs) .. ")")

allcats.MouseButton1Click:Connect(
    function()
        scroll.CanvasPosition = Vector2.new(0, 0)
        for _, song in ipairs(songs) do
            song.button.Visible = true
        end

        for _, song in ipairs(customsongs) do
            song.Visible = false
        end

        PLAYRANDOM.Visible = true
        LOOPRANDOM.Visible = true
        customnotice.Visible = false
    end
)

local existing = {}

for _, categoryName in pairs(categories) do
    local numsongs = {}
    for _, song in ipairs(songs) do
        for _, category in ipairs(song.cat) do
            if category == categoryName then
                table.insert(numsongs, song.button.Name)
            end
        end
    end

    local categoryButton = newcat(categoryName .. " (" .. tostring(#numsongs) .. ")")

    categoryButton.MouseButton1Click:Connect(
        function()
            PLAYRANDOM.Visible = false
            LOOPRANDOM.Visible = false

            scroll.CanvasPosition = Vector2.new(0, 0)

            for _, song in ipairs(songs) do
                song.button.Visible = false
                for _, category in ipairs(song.cat) do
                    if category == categoryName then
                        song.button.Visible = true
                    end
                end
            end

            for _, song in ipairs(customsongs) do
                song.Visible = false
            end
            customnotice.Visible = false
        end
    )
end

function disable()
    for _, song in ipairs(songs) do
        song.var = false
    end
end

disable()

songisplaying = false

function playbuttonclicked()
    if songisplaying then
        playSound("6493287948", 0.1)
        NotificationLibrary:SendNotification("Error", "A song is already playing.", 1)
        return
    end

    songisplaying = true

    bpm = tonumber(bpmbox.Text)

    if spoofMidiPlz == true then
        -- Spoof MIDI
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/midi_spoof_loader.lua", true)
        )()
    else
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/loader_main.lua", true)
        )()
    end

    -- find which song to play

    local songFound = false
    for _, song in pairs(songs) do
        if songFound == false then
            if song.var == true then
                loadstring(
                    game:HttpGet(
                        "https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/" .. song.url,
                        true
                    )
                )()
            songFound = true
            end
        end
    end
end -- close the play song onclick function

playsong.MouseButton1Click:Connect(playbuttonclicked)

for _, song in ipairs(songs) do
    song.button.MouseButton1Click:Connect(
        function()
            disable()
            song.var = true
            songname.Text = song.button.Text
            bpmbox.Text = song.bpm
        end
    )
end

-- play random function

PLAYRANDOM.MouseButton1Click:Connect(
    function()
        local function getRandomSong()
            local ransong = math.random(1, #songs)
            return songs[ransong]
        end

        local randomSong = getRandomSong()

        disable()
        randomSong.var = true
        songname.Text = randomSong.button.Name
        bpmbox.Text = randomSong.bpm

        playbuttonclicked()
    end
)

-- play all function

playingall = false

local function createstopbutton()
    if not STOPLOOP then
        -- StarterGui.ScreenGui.Frame.scrolltab.stoploop
        STOPLOOP = Instance.new("TextButton", bar)
        STOPLOOP["BorderSizePixel"] = 4
        STOPLOOP["TextSize"] = 14
        STOPLOOP["TextColor3"] = Color3.fromRGB(255, 255, 255)
        STOPLOOP["BackgroundColor3"] = Color3.fromRGB(76, 82, 101)
        STOPLOOP["FontFace"] =
            Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        STOPLOOP["AutomaticSize"] = Enum.AutomaticSize.XY
        STOPLOOP["Size"] = UDim2.new(0, 125, 0, 27)
        STOPLOOP["Name"] = [[stoploop]]
        STOPLOOP["BorderColor3"] = Color3.fromRGB(64, 68, 90)
        STOPLOOP["Text"] = [[STOP LOOPING SONGS]]
        STOPLOOP.LayoutOrder = 4

        STOPLOOP.MouseButton1Click:Connect(
            function()
                playingall = false
                STOPLOOP:Destroy()
                stopPlayingSongs()
                STOPLOOP = nil
            end
        )
    end
end

LOOPRANDOM.MouseButton1Click:Connect(
    function()
        if playingall then
            return
        end
        playingall = true
        createstopbutton()
        
        local playedSongs = {}

        local function getRandomSong()

            if #playedSongs >= #songs then
                playedSongs = {}
            end

            while true do
                local ransong = math.random(1, #songs)
                if not table.find(playedSongs, songs[ransong].button.Name) then
                    table.insert(playedSongs, songs[ransong].button.Name)
                    return songs[ransong]
                end
            end
            
        end

        while wait(1) do

            local randomSong = getRandomSong()
            if not playingall then
                return
            end

            disable()
            randomSong.var = true
            songname.Text = randomSong.button.Name
            bpmbox.Text = randomSong.bpm
            playbuttonclicked()
        end
    end
)

-- close function

closeButton.MouseButton1Click:Connect(
    function()
        ScreenGui:Destroy()
        STOPLOOP = nil
        playingall = false
        stopAllSongs()
    end
)

infoButton.MouseButton1Click:Connect(
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/info.lua", true)
        )()
    end
)

-- function to make the song buttons

local function newCustomSongButton(name)
    local customsongframe = Instance.new("Frame")
    local test = Instance.new("TextButton")
    local ImageButton = Instance.new("ImageButton")

    customsongframe.Name = "customsongframe"
    customsongframe.Parent = scroll
    customsongframe.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    customsongframe.BorderColor3 = Color3.fromRGB(64, 68, 90)
    customsongframe.BorderSizePixel = 4
    customsongframe.Size = UDim2.new(0, 175, 0, 35)
    customsongframe.SizeConstraint = Enum.SizeConstraint.RelativeYY

    test.Name = name
    test.Parent = customsongframe
    test.BackgroundTransparency = 1.000
    test.Size = UDim2.new(0, 135, 0, 35)
    test.Font = Enum.Font.SourceSansBold
    test.Text = name
    test.TextColor3 = Color3.fromRGB(255, 255, 255)
    test.TextScaled = true
    test.TextWrapped = true

    ImageButton.Parent = customsongframe
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.816999972, 0, 0.115000002, 0)
    ImageButton.Size = UDim2.new(0, 26, 0, 27)
    ImageButton.Image = "http://www.roblox.com/asset/?id=6121397347"

    return {button = test, delbutton = ImageButton, frame = customsongframe}
end

-- testing if the executor supports
-- listfiles(""), listfiles([[./TALENTLESS_CUSTOM_SONGS]])

local function test(name, _, func)
    print("Running test: " .. name)
    local success, err = pcall(func)
    if success then
        print(name .. " passed")
        return true
    else
        print(name .. " failed: " .. err)
        return false
    end
end

local function runTests()
    local allPassed = true

    allPassed =
        test(
        "makefolder",
        {},
        function()
            makefolder("TALENTLESS_makefolder")
            assert(isfolder("TALENTLESS_makefolder"), "Did not create the folder")
        end
    ) and allPassed

    allPassed =
        test(
        "listfiles",
        {},
        function()
            assert(#listfiles("") > 0, "Did not return a list of files")
        end
    ) and allPassed

    allPassed =
        test(
        "writefile",
        {},
        function()
            writefile("TALENTLESS_makefolder/writefile.txt", "success")
            testfile = listfiles("./TALENTLESS_makefolder")[1]
            assert(readfile(testfile) == "success", "Did not write the file")
        end
    ) and allPassed

    allPassed =
        test(
        "listfiles2",
        {},
        function()
            assert(#listfiles("./TALENTLESS_makefolder") > 0, "Did not return a list of files")
        end
    ) and allPassed

    allPassed =
        test(
        "delfile",
        {},
        function()
            delfile(testfile)
            assert(not isfile(testfile), "Did not delete the file")
        end
    ) and allPassed

    return allPassed
end

local result = runTests()

if result == true then
    print("this executor supports custom songs")
    customnotice:Destroy()
end

NEWSONGBUTTON = newSongButton("+", 30, {""})
NEWSONGBUTTON.Visible = false
print("loaded NEWSONGBUTTON")

NEWSONGBUTTON.MouseButton1Click:Connect(
    function()
        loadstring(
            game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/add_song.lua", true)
        )()
    end
)

table.insert(customsongs, NEWSONGBUTTON)
local addedCustoms = {}

-- function for listing songs in your custom songs folder. this runs at the end so if ur exec doesnt support it, the script wont die.

function updateSongs()
    local alreadyAdded

    for _, file in ipairs(listfiles("")) do
        print(tostring(file))
        if folderexists == false then
            if string.find(tostring(file), "TALENTLESS_CUSTOM_SONGS") then
                folderexists = true
                print("custom songs folder found")
            end
        end
    end

    print("searching for custom song files...")

    if folderexists then
        for _, custom in ipairs(listfiles([[./TALENTLESS_CUSTOM_SONGS]])) do
            alreadyAdded = false

            print("song file found: " .. tostring(custom))

            local filepath = tostring(custom) -- converts it into the format /TALENTLESS_CUSTOM_SONGS\example.txt

            if not table.find(addedCustoms, filepath) then
                if filepath:match("%.txt$") then -- if it has .txt at the end
                    print("its a txt file, continuing")

                    table.insert(addedCustoms, filepath) -- add the file to the addedCustoms table
                    local tsongname = filepath:gsub([[\]], "/"):match(".*/([^/]+)%.txt$") or "Error" -- remove the /, \, and .txt
                    print("song name: " .. tsongname)

                    local hello = newCustomSongButton(tsongname) -- make the song button
                    local songbutton = hello.button -- get the button
                    local delsongbutton = hello.delbutton
                    local songframe = hello.frame -- get the frame
                    table.insert(customsongs, songframe)
                    songbutton.Visible = false

                    print("created song button for " .. tsongname)

                    local songbpm = readfile(custom):match("bpm%s*=%s*(%d+)") or "Error" -- read the file and look for the string after bpm =
                    print("songbpm found: " .. songbpm)

                    songbutton.Visible = true

                    songbutton.MouseButton1Click:Connect(
                        function()
                            print("clicked!")

                            if songisplaying then
                                playSound("6493287948", 0.1)
                                NotificationLibrary:SendNotification("Error", "A song is already playing.", 1)
                                return
                            else
                                local songcode = readfile(custom) -- define the contents of the song file
                                local func, err = loadstring(songcode) -- load it

                                if func then
                                    print("running scrip....")
                                    songname.Text = tsongname
                                    bpmbox.Text = songbpm
                                    playSound("6493287948", 0.1)
                                    NotificationLibrary:SendNotification("Success", "Began playing song.", 1)
                                    songisplaying = true
                                    func()  
                                else
                                    print("invalid script")
                                    playSound("6493287948", 0.1)
                                    NotificationLibrary:SendNotification(
                                        "Error",
                                        "Your song script is broken. If confused, contact support in the discord.",
                                        5
                                    )
                                end
                            end
                        end
                    )

                    -- Initialize variables outside the event handler
                    local clickTime = 0.5
                    local lastClick = 0

                    -- Create a single event connection
                    delsongbutton.MouseButton1Click:Connect(
                        function()
                            local now = tick()
                            if now - lastClick <= clickTime then
                                -- Double-click detected
                                print("Double-click detected. Deleting song...")
                                delfile(filepath) -- Delete the file
                                songframe:Destroy()
                                table.remove(customsongs, table.find(customsongs, songbutton))
                                table.remove(addedCustoms, table.find(addedCustoms, filepath))
                                updatecustomcount()
                                playSound("6493287948", 0.1)
                                NotificationLibrary:SendNotification("Success", "Your song has been deleted.", 5)
                            else
                                -- Single-click detected
                                print("Single-click detected. Showing notification...")
                                playSound("6493287948", 0.1)
                                NotificationLibrary:SendNotification("Info", "Double-click to delete the song.", 3)
                            end
                            lastClick = now -- Update the last click time
                        end
                    )

                    updatecustomcount()
                else -- if yes table.find
                    print("song already added, skipping")
                end
            else    
                print("its not a txt, skipping")
            end
        end
    else
    end -- ends if folderexists
end -- end updatesongs func

for _, songbutton in ipairs(scroll:GetChildren()) do
    if songbutton:IsA("TextButton") then
        if songbutton.Text == "error" then
            songbutton:Destroy()
        end
    else
    end
end

wait(0.5)
updateSongs()

print([[



 __ __|   \     |      ____|   \  | __ __|  |      ____|   ___|   ___|  
    |    _ \    |      __|      \ |    |    |      __|   \___ \ \___ \  
    |   ___ \   |      |      |\  |    |    |      |           |      | 
   _| _/    _\ _____| _____| _| \_|   _|   _____| _____| _____/ _____/  
 


]])

loadstring(
    game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/TALENTLESS/main/logger.lua", true)
)()
