
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()

local Window = OrionLib:MakeWindow({Name = "SN脚本中心 V1.3.5  ", HidePremium = false, SaveConfig = true,IntroText = "welcome", ConfigFolder = "xianing制作"})
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "HUB"; Text ="HUB"; Duration = 4; })

local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("脚本为免费脚本 请勿去圈钱")
about:AddParagraph("禁止倒卖")
about:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("注入器:"," "..identifyexecutor().."")
about:AddParagraph("当前服务器ID"," "..game.GameId.."")

local Tab =Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者QQ",
	Callback = function()
     setclipboard("3918789296")
  	end
})

Tab:AddButton({
	Name = "复制SN脚本交流群QQ",
	Callback = function()
     setclipboard("1048659522")
  	end
})

OrionLib:MakeNotification({
	Name = "SN脚本中心",
	Content = "欢迎使用SN-hub",
	Image = "rbxassetid://4483345998",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "通用",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "玩家属性"

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

         game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "回满血",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end
})

Tab:AddButton({
	Name = "退出游戏",
	Callback = function()
     game.Players.LocalPlayer:Kick("你被SN踢出游戏了！！👿")
        end
})

Tab:AddButton({
	Name = "销户~",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
        end
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/xianing151/SNHUB/main/SNfly.lua"))()
         end
})

Tab:AddButton({

	Name = "电脑键盘",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()

  	end    

})

Tab:AddToggle({
  Name = "穿墙",
  Default = false,
  Callback = function(Value)
    if Value then
      Noclip = true
      Stepped = game.RunService.Stepped:Connect(function()
        if Noclip == true then
          for a, b in pairs(game.Workspace:GetChildren()) do
            if b.Name == game.Players.LocalPlayer.Name then
              for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                  v.CanCollide = false
                end
              end
            end
          end
         else
          Stepped:Disconnect()
        end
      end)
     else
      Noclip = false
    end
  end
})

Tab:AddButton({

	Name = "透视",

	Callback = function()

    --//Toggle\\--
getgenv().Toggle = true -- This toggles the esp, turning it to false will turn it off
getgenv().TC = false -- This toggles team check, turning it on will turn on team check
local PlayerName = "Name" -- You can decide if you want the Player's name to be a display name which is "DisplayName", or username which is "Name"

--//Variables\\--
local P = game:GetService("Players")
local LP = P.LocalPlayer

--//Debounce\\--
local DB = false

--//Notification\\--
game.StarterGui:SetCore("SendNotification", {
	Title = "Notification",
	Text = "Best ESP by.ExluZive" ,
	Button1 = "Shut Up",
	Duration = math.huge
})

--//Loop\\--
while task.wait() do
	if not getgenv().Toggle then
		break
	end
	if DB then 
		return 
	end
	DB = true

	pcall(function()
		for i,v in pairs(P:GetChildren()) do
			if v:IsA("Player") then
				if v ~= LP then
					if v.Character then

						local pos = math.floor(((LP.Character:FindFirstChild("HumanoidRootPart")).Position - (v.Character:FindFirstChild("HumanoidRootPart")).Position).magnitude)
						-- Credits to Infinite Yield for this part (pos) ^^^^^^

						if v.Character:FindFirstChild("Totally NOT Esp") == nil and v.Character:FindFirstChild("Icon") == nil and getgenv().TC == false then
							--//ESP-Highlight\\--
							local ESP = Instance.new("Highlight", v.Character)

							ESP.Name = "Totally NOT Esp"
							ESP.Adornee = v.Character
							ESP.Archivable = true
							ESP.Enabled = true
							ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
							ESP.FillColor = v.TeamColor.Color
							ESP.FillTransparency = 0.5
							ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
							ESP.OutlineTransparency = 0

							--//ESP-Text\\--
							local Icon = Instance.new("BillboardGui", v.Character)
							local ESPText = Instance.new("TextLabel")

							Icon.Name = "Icon"
							Icon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							Icon.Active = true
							Icon.AlwaysOnTop = true
							Icon.ExtentsOffset = Vector3.new(0, 1, 0)
							Icon.LightInfluence = 1.000
							Icon.Size = UDim2.new(0, 800, 0, 50)

							ESPText.Name = "ESP Text"
							ESPText.Parent = Icon
							ESPText.BackgroundColor3 = v.TeamColor.Color
							ESPText.BackgroundTransparency = 1.000
							ESPText.Size = UDim2.new(0, 800, 0, 50)
							ESPText.Font = Enum.Font.SciFi
							ESPText.Text = v[PlayerName].." | 距离: "..pos
							ESPText.TextColor3 = v.TeamColor.Color
							ESPText.TextSize = 10.800
							ESPText.TextWrapped = true
						else
							if v.TeamColor ~= LP.TeamColor and v.Character:FindFirstChild("Totally NOT Esp") == nil and v.Character:FindFirstChild("Icon") == nil and getgenv().TC == true then
								--//ESP-Highlight\\--
								local ESP = Instance.new("Highlight", v.Character)
								ESP.Name = "Totally NOT Esp"
								ESP.Adornee = v.Character
								ESP.Archivable = true
								ESP.Enabled = true
								ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								ESP.FillColor = v.TeamColor.Color
								ESP.FillTransparency = 0.5
								ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
								ESP.OutlineTransparency = 0

								--//ESP-Text\\--
								local Icon = Instance.new("BillboardGui", v.Character)
								local ESPText = Instance.new("TextLabel")

								Icon.Name = "Icon"
								Icon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								Icon.Active = true
								Icon.AlwaysOnTop = true
								Icon.ExtentsOffset = Vector3.new(0, 1, 0)
								Icon.LightInfluence = 1.000
								Icon.Size = UDim2.new(0, 800, 0, 50)

								ESPText.Name = "ESP Text"
								ESPText.Parent = Icon
								ESPText.BackgroundColor3 = v.TeamColor.Color
								ESPText.BackgroundTransparency = 1.000
								ESPText.Size = UDim2.new(0, 800, 0, 50)
								ESPText.Font = Enum.Font.SciFi
								ESPText.Text = v[PlayerName].." | 距离: "..pos
								ESPText.TextColor3 = v.TeamColor.Color
								ESPText.TextSize = 10.800
								ESPText.TextWrapped = true
							else
								if not v.Character:FindFirstChild("Totally NOT Esp").FillColor == v.TeamColor.Color and not v.Character:FindFirstChild("Icon").TextColor3 == v.TeamColor.Color then
									v.Character:FindFirstChild("Totally NOT Esp").FillColor = v.TeamColor.Color
									v.Character:FindFirstChild("Icon").TextColor3 = v.TeamColor.Color
								else
									if v.Character:FindFirstChild("Totally NOT Esp").Enabled == false and v.Character:FindFirstChild("Icon").Enabled == false then
										v.Character:FindFirstChild("Totally NOT Esp").Enabled = true
										v.Character:FindFirstChild("Icon").Enabled = true
									else
										if v.Character:FindFirstChild("Icon") then
											v.Character:FindFirstChild("Icon")["ESP Text"].Text = v[PlayerName].." | Distance: "..pos
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	wait()

	DB = false
end

	end 

})


Tab:AddButton({
	Name = "光影",
	Callback = function()
     	loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
        end
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
        end
})

Tab:AddButton({
	Name = "无限跳",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
        end
})



Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
     mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
        end
})

Tab:AddButton({
	Name = "当前坐标",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xianing151/SNHUB/main/coordinate.lua"))()
        end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "后门注入器",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"))()
        end
})

local Tab = Window:MakeTab({

    Name = "FE专区",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "大运",
	Callback = function()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/Crazy-Man-R6/36ec60d16bf8d208c40807aa0fd2662af76a5385/Crazy%20Man%20R6"))()
        end
})

Tab:AddButton({
	Name = "动画",
	Callback = function()
     loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AFEM-14048"))()
        end
})



local Tab = Window:MakeTab({

    Name = "其他脚本",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "落叶中心",
	Callback = function()
     getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
        end
})

Tab:AddButton({
	Name = "霖溺",
	Callback = function()
     LnScript = "霖溺-免费版加载器"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ScriptLoader/refs/heads/main/Linni_FreeLoader.lua"))()
        end
})

Tab:AddButton({
	Name = "青风脚本",
	Callback = function()
     loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,116,53,87,75,53,72,48,72})end)())))("青风脚本")
        end
})

Tab:AddButton({
	Name = "Rb脚本",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Yungengxin/roblox/refs/heads/main/Rb-Hub"))()
        end
})

Tab:AddButton({
	Name = "皮脚本",
	Callback = function()
     getgenv().XiaoPi="皮脚本QQ群1002100032" loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
        end
})

Tab:AddButton({
	Name = "导管中心",
	Callback = function()
     loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
        end
})

Tab:AddButton({
	Name = "Z脚本",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/raw/refs/heads/main/ZiO.lua"))()
        end
})

Tab:AddButton({
	Name = "宿傩",
	Callback = function()
     loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6d74b9cd32ce7fa235684299fd1c79b7.lua"))()
        end
})

Tab:AddButton({
	Name = "天空中心",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/hdjsjjdgrhj/script-hub/refs/heads/main/skyhub"))()
        end
})

Tab:AddButton({
	Name = "北极星",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/zilinskaslandon/-/refs/heads/main/%3DBJX%E8%84%9A%E6%9C%AC%E4%B8%AD%E5%BF%83%E4%BA%8C%E6%AD%A5%E9%AA%A4%3D.lua",true))()
        end
})

Tab:AddButton({
	Name = "走马观花X",
	Callback = function()
     _ZOUMAGUANHUAGUI='走马观花X'loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\88\80\84\105\86\75\87\120"))()
     setclipboard("dajibaccb")
     game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "卡密已自动复制"; Text ="祝你玩的愉快！"; Duration = 10; })
        end
})

Tab:AddButton({
	Name = "禁漫中心",
	Callback = function()
     getgenv().LS="禁漫中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ng/main/jmlllllllIIIIlllllII.lua"))()
        end
})

Tab:AddButton({
	Name = "神金脚本",
	Callback = function()
     loadstring(game:HttpGet("https://github.com/shenjin55/qq-927274889/raw/refs/heads/main/roblox-shen-jin.lua"))()
        end
})

Tab:AddButton({
	Name = "皇脚本",
	Callback = function()
     loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
        end
})

local Tab = Window:MakeTab({

    Name = "死铁",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "scripts"

})

Tab:AddButton({
	Name = "全自动刷债券",
	Callback = function()
     getgenv().BondFarmSetting = {
	Fast_Auto_Execute = true, -- Use queue_on_teleport to execute faster than your executor itself 
	Number_Of_Bonds_Targeted = 9e9, -- When your bonds reached the number you wanted, the will script automatically be stopped
	Tween_Duration = 23, -- The smaller number, the faster it goes (best is 23)
	Webhook_Url = "none",
	Main_Auto_SHOP_Delay = 70, -- auto server hop after time ended in main game
	Lobby_Auto_SHOP_Delay = 25, -- auto server hop after time ended in lobby
	Goto_Party_By_Walking_Only = false, -- if you set to false, it instantly teleport you to party creator, else it make you walk to party creator 
	Blackscreen_Save_Battery = true,
	Show_Bonds_Collected_On_Blackscreen = false
}
SaveNewSettings = true 
script_key = "DonjoSx_Was_Not_Here" -- Script key, don't remove this
loadstring(game:HttpGet("https://raw.githubusercontent.com/Umbrella-Scripter/Deadrails-Script/refs/heads/main/average-bond-farm.lua"))()
        end
})

local Tab = Window:MakeTab({

    Name = "动感星期五",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "自动打歌",
	Callback = function()
     loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
        end
})

local Tab = Window:MakeTab({

    Name = "伐木大亨",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "提示",
	Callback = function()
     game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "提示"; Text ="作者没有找到脚本"; Duration = 4; })
        end
})

local Tab = Window:MakeTab({

    Name = "在披萨店工作",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "自动工作脚本",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xianing151/testhub/main/psd.lua"))()
        end
})

local Tab = Window:MakeTab({

    Name = "doors",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "doors最强脚本汉化",
	Callback = function()
     loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
        end
})

local Tab = Window:MakeTab({

    Name = "忍者传奇",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "狐--忍着传奇",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xianing151/testhub/main/狐忍者.lua"))()
        end
})

autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break
                end
            end
        end
    )
end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break
                    end
                end
            end
        end
    )
end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end
                end
                if not autosellmax then
                    break
                end
            end
        end
    )
end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyswords then
                    break
                end
            end
        end
    )
end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuybelts then
                    break
                end
            end
        end
    )
end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break
                end
            end
        end
    )
end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyskill then
                    break
                end
            end
        end
    )
end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyshurikens then
                    break
                end
            end
        end
    )
end

local Section = Tab:AddSection({
	Name = "自动挥舞/售卖"
})

Tab:AddToggle(
    {
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)
    
Tab:AddToggle(
    {
        Name = "存满了自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)

local Section = Tab:AddSection({
	Name = "自动购买功能"
})

Tab:AddToggle(
    {
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买称号",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "解锁所有岛",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    }
)

local Tab = Window:MakeTab({

    Name = "避难所生活",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "外网的(有的要卡密)",
	Callback = function()
     _G.Theme = "Dark"
--Themes: Light, Dark, Red, Mocha, Aqua and Jester

loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/refs/heads/main/AsyliumLife.lua"))()
        end
})

local Tab = Window:MakeTab({

    Name = "自然灾害模拟器",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "自制"

})

Tab:AddButton({
	Name = "传送至游戏区域",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-126.45,50,33.72)
        end
})

Tab:AddButton({
	Name = "传送至主城",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-281.67,190.0,341.45)
        end
})

local Section = Tab:AddSection({

	Name = "黑洞"

})

Tab:AddButton({
	Name = "黑洞Universal-Script-Super-ring-Parts-V6",
	Callback = function()
     loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Super-ring-Parts-V6-28581"))()
        end
})

local Tab = Window:MakeTab({

    Name = "比特币矿工",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "传送15级区域",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(25,8,-247)
        end
})

Tab:AddButton({
	Name = "传送35级区域",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-212,34,-89)
        end
})

Tab:AddButton({
	Name = "传送900级区域",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(104,10,265)
        end
})

Tab:AddButton({
	Name = "传送solar区(得上地铁)",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(246,-18,136)
        end
})

Tab:AddButton({
	Name = "提款机",
	Callback = function()
     game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(205.59,7.39,-34.49)
        end
})

local Tab = Window:MakeTab({

    Name = "压力",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "脚本",
	Callback = function()
     loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()
        end
})

local Tab = Window:MakeTab({

    Name = "墨水游戏",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "墨水游戏最强汉化脚本",
	Callback = function()
      return(function(...)local q={"\111\108\101\107\066\086\102\085","\106\052\118\087\111\103\061\061","\067\086\112\107\111\050\102\087\048\043\118\110\111\089\061\061";"\102\101\103\079\072\086\118\097\102\056\077\056\102\069\073\050\099\086\065\061","";"\066\053\102\120\099\118\102\068\070\053\077\050\072\097\066\118\067\114\061\061","\122\101\112\073\067\043\072\118\115\088\061\061","\066\108\072\057\111\069\056\102\084\101\107\121\057\056\111\084\066\089\061\061";"\077\086\056\090\048\086\077\079\098\053\072\118\066\086\077\051\066\086\077\069\098\103\061\061";"\111\043\105\071\067\068\098\061","\120\122\084\116\050\073\066\078\055\070\072\111\098\072\076\070\119\055\057\101\109\074\054\122\076\053\087\068\065\084\090\098\084\072\121\083\072\065\043\067\102\082\049\101\083\098\077\051\118\110\049\100\097\114\055\107\101\110\071\071\077\055\101\110\104\070\054\089\115\110\068\116\113\072\112\072\055\089\048\111\068\106\071\086\086\073\117\078\055\088\061\061","\121\047\075\087\084\057\065\089\048\068\107\117\106\043\077\110\106\103\061\061","\111\108\056\090\111\103\061\061","\070\050\072\087\048\053\066\118\066\088\061\061","\072\051\066\084\106\118\111\077\055\077\075\051\047\077\073\050\084\057\106\061";"\048\068\072\079\055\057\054\052","\111\122\080\079\067\068\098\061","\111\068\102\101\106\114\061\061","\067\086\077\110","\066\086\056\120\067\086\084\061";"\121\120\114\118\111\076\085\073\121\114\061\061";"\066\057\054\089\106\057\102\116";"\111\050\102\099\111\053\098\108\057\097\080\049\067\087\105\119\048\086\065\061","\115\086\102\111\084\056\080\107\070\050\080\107\047\043\073\101\067\086\099\061";"\122\101\112\052\106\089\061\061";"\066\086\112\110\066\057\101\120\111\122\098\061","\106\108\112\110\106\108\056\087","\066\122\080\073\055\118\073\117\077\087\118\056\070\084\101\076\099\103\061\061";"\067\057\056\087\055\088\061\061";"\072\051\072\116\067\069\090\068\106\122\102\079\070\087\066\084\067\051\053\061";"\048\108\118\053\057\053\105\110\099\097\066\076\121\057\098\061","\122\101\112\090\111\122\072\107\066\086\056\120\067\086\084\061","\048\086\102\107\067\086\089\061";"\067\097\053\061";"\122\101\112\119\111\057\065\061","\048\108\077\087\067\057\077\087\106\122\072\107\106\043\105\118";"\048\043\056\110\111\086\112\090","\048\122\053\089\067\087\111\106\099\122\066\106\077\069\054\099\048\088\061\061";"\099\084\111\085\055\084\066\101\103\122\056\071\111\051\111\070\066\086\072\077","\077\087\073\069\070\097\056\086\057\118\056\085\077\043\054\102\047\103\061\061","\066\043\111\097\102\101\107\085\066\069\118\069\099\057\101\121\121\057\053\061";"\048\043\077\090\067\068\111\118";"\067\097\098\061","\106\108\107\107\048\114\061\061";"\121\114\061\061";"\072\069\111\117\055\087\072\075\103\122\077\120\057\118\107\090\066\114\061\061";"\066\086\112\117\066\050\080\073\067\043\048\061"}local function a(a)return q[a-(-130884-(-158500))]end for a,X in ipairs({{833336+-833335,1019551+-1019504},{-103832+103833;197827-197787},{33530+-33489,589676+-589629}})do while X[682795+-682794]<X[765697-765695]do q[X[-38594-(-38595)]],q[X[13933-13931]],X[300754+-300753],X[-902646+902648]=q[X[-527350-(-527352)]],q[X[971776+-971775]],X[459728-459727]+(804409+-804408),X[-883380-(-883382)]-(-875935+875936)end end do local a=table.concat local X=string.len local x=string.char local M=string.sub local h=q local L=math.floor local C=table.insert local G=type local g={["\053"]=240069-240065,w=926825-926781;["\047"]=848005+-847986;i=490068-490019;m=718023-717964,k=-1047697+1047730;["\051"]=47730+-47695,f=846028+-846015,q=835057-834994;F=-474238+474256,o=740012+-739987;c=30248-30236;W=-373964-(-374016);J=680981-680919,l=679514-679460,["\050"]=652282+-652275,U=163778-163738;L=883043+-883041,B=752108+-752079,V=187787+-187781,["\056"]=863076-863071,b=953053-953045;P=179252+-179243,u=785258+-785207,h=-28307+28338;O=-948643-(-948693),D=-515016+515071,R=-475168-(-475228),A=92446+-92390,a=1039791+-1039788;H=814600-814583;y=679323-679309,Y=-381759+381807,S=185912-185902;j=213769-213745,g=-95082-(-95098);["\043"]=381034-380996,z=76012+-75989,["\048"]=-968194+968222,s=988880+-988850;X=559723-559723;v=115016-114979,E=-53238+53274;I=637445-637404;C=854541+-854514,M=146087-146066;["\049"]=523965-523954,r=-308597-(-308629),N=206504+-206462,["\052"]=610205+-610166,n=1041650-1041604;T=464220-464200,t=-753942-(-753985);["\054"]=-493084+493141,Z=-798763+798808;K=554101+-554100;x=-367966+368000,e=767122-767069;Q=774396-774338;["\057"]=-577635+577657,p=-360480+360541,d=-892540-(-892555);G=207508-207461;["\055"]=-103726-(-103752)}for q=823093+-823092,#h,-561947+561948 do local T=h[q]if G(T)=="\115\116\114\105\110\103"then local G=X(T)local N={}local j=158843-158842 local s=-435018-(-435018)local D=-566406-(-566406)while j<=G do local q=M(T,j,j)local a=g[q]if a then s=s+a*(228145-228081)^((183636-183633)-D)D=D+(200519-200518)if D==521774+-521770 then D=761143-761143 local q=L(s/(380625-315089))local a=L((s%(-810045+875581))/(702152+-701896))local X=s%(852033+-851777)C(N,x(q,a,X))s=135484+-135484 end elseif q=="\061"then C(N,x(L(s/(-440270+505806))))if j>=G or M(T,j+(847441-847440),j+(-994955+994956))~="\061"then C(N,x(L((s%(-340411-(-405947)))/(107378-107122))))end break end j=j+(-120418+120419)end h[q]=a(N)end end end return(function(q,x,M,h,L,C,G,V,D,m,T,d,N,I,l,Q,s,F,S,j,X,g)F,I,m,j,S,V,g,N,Q,l,T,X,D,s,d=function(q,a)local x=s(a)local M=function(M,h,L)return X(q,{M,h;L},a,x)end return M end,function(q,a)local x=s(a)local M=function(M,h,L,C,G)return X(q,{M;h,L;C;G},a,x)end return M end,function(q,a)local x=s(a)local M=function(M,h,L,C,G,g)return X(q,{M,h;L;C,G,g},a,x)end return M end,421443-421443,function(q)T[q]=T[q]-(-98523-(-98524))if T[q]==-65711-(-65711)then T[q],g[q]=nil,nil end end,function(q,a)local x=s(a)local M=function(...)return X(q,{...},a,x)end return M end,{},function()j=(326908+-326907)+j T[j]=260377-260376 return j end,function(q,a)local x=s(a)local M=function(M,h)return X(q,{M;h},a,x)end return M end,function(q,a)local x=s(a)local M=function(M,h,L,C)return X(q,{M,h;L,C},a,x)end return M end,{},function(X,M,h,L)local G,W,c,o,f,B,H,Y,i,p,O,y,b,T,w,k,j,U,u,Z,n,s,K,e,J,D,E,A,V,v,R,P,r,t while X do if X<8706345-538511 then if X<2946409-130883 then if X<-289892+1280492 then if X<347874-(-249650)then if X<-197380+642873 then if X<-529883-(-776510)then if X<309978+-91982 then X=-387327+10600524 i=a(470143-442512)e=q[i]G=e else X=953945+5980064 g[h[-888683+888688]]=G T=nil end else X=true X=X and-36143+812533 or 1042955-420866 end else if X<-21940-(-508327)then y=g[j]E=y X=y and 2326904-(-216424)or 495588+11848910 else r=not P i=i+u n=i<=e n=r and n r=i>=e r=P and r n=r or n r=694513+9893468 X=n and r n=8056842-(-974329)X=X or n end end else if X<1160949-361697 then if X<-946560+1623133 then G={}X=q[a(-198332+225949)]else T=a(-168515+196158)G=a(725165-697513)X=q[G]G=q[T]T=a(603623-575980)q[T]=X T=a(112379-84727)q[T]=G X=955506+-682571 T=g[h[-784300-(-784301)]]j=T()end else if X<-585835+1572407 then X=-769650+5524684 else K=a(-973133+1000785)X=q[K]K=a(-660965+688608)q[K]=X X=-785635+8448661 end end end else if X<2612585-91467 then if X<1600018-(-310714)then if X<510301-(-556482)then if X<423693-(-596102)then s=a(-979367-(-1006996))j=q[s]s=a(554347+-526696)T=j[s]s=g[h[-559301+559302]]j={T(s)}G={x(j)}X=q[a(1023025+-995365)]else X=true X=10337665-85028 end else b=a(490230+-462574)X=q[b]f=a(706485-678842)K=q[f]b=X(K)X=a(-508908-(-536560))q[X]=b X=8118964-455938 end else if X<2942346-545759 then X=851838+1784852 J=S(J)o=S(o)c=S(c)B=S(B)A=S(A)Z=nil f=S(f)else V=35184372426266-337434 n=a(161789+-134164)H=-321718+321973 X={}g[h[313937+-313935]]=X G=g[h[-272959-(-272962)]]D=G G=j%V g[h[-435451-(-435455)]]=G w=j%H H=1019658-1019656 V=w+H g[h[-326672-(-326677)]]=V H=q[n]n=a(-484603-(-512231))w=H[n]H=w(T)i=-947270+947271 w=a(608696+-581035)n=54686-54685 u=i s[j]=w e=H w=128880+-128631 i=194036+-194036 X=58057+452673 P=u<i i=n-u end end else if X<-753004+3416325 then if X<2900749-342609 then v=986216+-986215 y=Z[v]X=605294+11739204 E=y else f=not K W=W+b G=W<=t G=f and G f=W>=t f=K and f G=f or G f=16103330-(-124674)X=G and f G=38809+13462142 X=X or G end else if X<3397957-617244 then O=O+f R=O<=K o=not A R=o and R o=O>=K o=A and o R=o or R o=112843+3935817 X=R and o R=7455912-(-708287)X=X or R else g[j]=W X=g[j]X=X and 9261567-(-456987)or 1994320-935670 end end end end else if X<821477+6217587 then if X<4362322-(-278053)then if X<4752447-966361 then if X<923622+2813438 then if X<826195+2563714 then X=g[h[-259742-(-259743)]]e=-774064-(-774319)n=133991-133991 H=X(n,e)j=s T[j]=H X=6840727-(-92234)j=nil else j=a(-797110-(-824758))G=-59667+15164700 s=11279768-114867 T=j^s X=G-T T=X G=a(345495-317855)X=G/T G={X}X=q[a(-881293-(-908955))]end else X=1934209-(-851383)t=u==P W=t end else if X<-911723+5074515 then R=O o=R r[R]=o R=nil X=156941+2590632 else p=333258+-333257 U=Z[p]y=X p=false v=U==p X=v and 830996+15566446 or 63466+7010435 E=v end end else if X<790909+4854224 then if X<4039216-(-686613)then H=a(9013+18625)w=G G=q[H]H=a(-315014+342660)X=G[H]H=N()n=a(-473194-(-500823))P=a(185289-157660)g[H]=X G=q[n]n=a(988646-961010)X=G[n]u=q[P]i=X e=u n=X X=u and 915318+6229591 or-106118+13213302 else X=true X=X and 8159909-1001394 or 14720919-416616 end else if X<7083407-149540 then s=s+V j=s<=D H=not w j=H and j H=s>=D H=w and H j=H or j H=2436834-(-414869)X=j and H j=17576233-882941 X=X or j else X=g[h[-700583+700590]]X=X and 13846702-(-209899)or-433882+12267534 end end end else if X<7423410-(-20627)then if X<-350256+7508721 then if X<-216249+7363797 then if X<7713728-608285 then X=y G=E X=328467+12295019 else r=a(381722-354093)P=q[r]X=14018334-911150 r=a(-925990-(-953621))u=P[r]e=u end else s=470958+-470957 j=g[h[-482878+482881]]T=j~=s X=T and 8039766-(-137956)or-349584+9075777 end else if X<8136644-869620 then b=544260-544259 K=100062+-100056 X=g[H]t=X(b,K)X=a(-423458+451110)q[X]=t K=a(706603+-678951)b=q[K]K=61572+-61570 X=b>K X=X and 192402-(-892176)or 1515786-526362 else r=nil e=S(e)D=S(D)H=S(H)s=S(s)O=S(O)P=nil j=S(j)w=nil u=nil R=nil n=nil w=a(-418361-(-445999))O=-143655+143911 n=a(-417630-(-445259))i=S(i)s=nil r={}V=S(V)V=q[w]j=nil e=a(921678-894053)X=1009482+1738091 w=a(-882643+910262)H=a(-211824+239462)D=V[w]V=N()g[V]=D w=q[H]H=a(-218341+245987)D=w[H]K=O H=q[n]n=a(-659976-(-687627))w=H[n]n=q[e]e=a(-725060-(-752713))i=N()H=n[e]e=N()n=575067+-575067 g[e]=n n=349709-349707 P=N()g[i]=n u={}n={}R=-763785-(-763786)O=-1041507-(-1041508)g[P]=u u=229169-229169 f=O O=-607592-(-607592)A=f<O O=R-f end end else if X<7237292-(-703862)then if X<-721567+8371872 then X=G and 46639+15315996 or-592069+7526078 else X=-872196+5627230 end else if X<700196+7377224 then j=M[-413642-(-413644)]T=M[883378-883377]X=g[h[522257-522256]]s=X X=s[j]X=X and 10391436-(-400308)or 728458+1695324 else K=462935+-462935 O=#r X=14619005-(-397639)R=O==K end end end end end else if X<13145609-866530 then if X<556127+9638036 then if X<9962655-660711 then if X<-674765+9400652 then if X<7350499-(-1008767)then if X<-739151+8925332 then s=-467404+467436 j=g[h[-511295+511298]]T=j%s u=750084-750071 e=-955226-(-955228)D=g[h[504044+-504040]]H=g[h[-13212-(-13214)]]R=g[h[-72150-(-72153)]]r=R-T R=442068+-442036 P=r/R i=u-P n=e^i w=H/n V=D(w)D=715188+4294252108 s=V%D V=682000-681998 D=V^T j=s/D n=-809-(-810)D=g[h[-275186-(-275190)]]H=j%n n=4294818476-(-148820)w=H*n V=D(w)D=g[h[20264-20260]]e=193-(-63)w=D(j)s=V+w V=-23074+88610 j=nil H=-1003557+1069093 D=s%V X=-709692+1728899 w=s-D V=w/H s=nil H=541993-541737 u=-808062-(-808318)w=D%H T=nil n=D-w H=n/e e=230487-230231 n=V%e i=V-n e=i/u i={w,H;n,e}H=nil g[h[672942-672941]]=i w=nil V=nil n=nil e=nil D=nil else G=a(184083+-156457)T=a(-474829+502447)X=q[G]G=X(T)G={}X=q[a(-875549+903186)]end else w=g[V]X=4576141-(-96214)G=w end else if X<-254447+9225053 then j=g[h[986140-986137]]s=-783769+783917 T=j*s j=229433+-229176 G=T%j g[h[764673+-764670]]=G X=7280675-131944 else D=nil X=13975279-735992 H=nil w=nil end end else if X<-960901+10755657 then if X<9898287-220608 then j=g[h[-248897-(-248899)]]s=72991-72930 T=j*s j=63606+14162602303821 G=T+j T=35184372478565-389733 X=G%T g[h[-872971-(-872973)]]=X T=g[h[-80936-(-80939)]]j=-994392+994393 X=8779658-53465 G=T~=j else X=6604315-(-796618)end else if X<8824491-(-998338)then T=M s=a(905662+-878037)X=true D=N()j=N()g[j]=X G=q[s]s=a(-502145-(-529802))X=G[s]s=N()g[s]=X V=N()n=d(-20838+13618466,{V})H=a(-377002-(-404644))X=F(8857202-647505,{})g[D]=X X=false g[V]=X w=q[H]H=w(n)G=H X=H and 9507005-804776 or 5609246-936891 else X=-423139-(-696074)end end end else if X<11157581-(-130408)then if X<10935861-181124 then if X<-359910+10939487 then if X<9230387-(-990052)then i=-778911+778914 e=N()u=-258706-(-258771)g[e]=G X=g[H]b=a(-759301-(-786957))R=Q(2715492-(-988309),{})r=a(1004011-976369)G=X(i,u)i=N()g[i]=G X=342406-342406 G=q[r]r={G(R)}u=X G=923438-923436 X=798235+-798235 P=X X={x(r)}r=X X=r[G]G=a(555755-528120)R=X X=q[G]O=g[s]t=q[b]b=t(R)t=a(-195151-(-222781))W=O(b,t)O={W()}G=X(x(O))X=3624421-987731 O=N()g[O]=G W=g[i]t=W G=-906484-(-906485)W=-950041+950042 b=W W=-1019195-(-1019195)K=b<W W=G-b else X=F(-809827+10637901,{D})t={X()}G={x(t)}X=q[a(-839466+867115)]end else X=389786-(-120944)n=i b=a(-984234+1011859)t=q[b]b=a(-430005+457663)W=t[b]t=W(T,n)W=g[h[-179102+179108]]b=W()O=t+b R=O+w O=872920-872664 r=R%O w=r b=239515-239514 O=s[j]n=nil t=w+b W=D[t]R=O..W s[j]=R end else if X<10554441-(-503902)then X=12355053-(-884234)else R={}o={}H=nil O=N()D=nil f=N()K=d(10536098-(-947125),{O;e;i;V})g[O]=R R=N()g[R]=K B=a(198802+-171139)K={}r=nil v=nil w=nil A=a(610884+-583239)g[f]=K u=nil K=q[A]c=g[f]Z=a(-751653-(-779294))J={[B]=c;[Z]=v}V=S(V)A=K(o,J)u=-502657+15301609965398 n=nil s=A K=m(7839418-(-204753),{f,O,P;e,i;R})V=a(254820-227161)f=S(f)R=S(R)D=q[V]j=K G={}P=S(P)i=S(i)O=S(O)e=S(e)H=a(-512725+540347)i=a(-851778+879398)w=q[H]e=j(i,u)n=s[e]s=nil e=a(-417723-(-445346))e=w[e]X=q[a(-367118-(-394773))]H={e(w,n)}j=nil V=D(x(H))D=V()end end else if X<-1048505+12675897 then if X<302641+11074976 then E=g[j]X=E and 12151+4545704 or 13454455-830969 G=E else T=g[h[272978+-272977]]G=#T T=-1025951-(-1025951)X=G==T X=X and 224416+9397228 or 533795-(-485412)end else if X<-839831+12531742 then j=g[h[-796623-(-796625)]]s=g[h[-250485-(-250488)]]X=6846882-(-799758)T=j==s G=T else X={}s=g[h[-477971+477980]]T=X D=s j=-72660-(-72661)X=356946+6576015 s=122354-122353 V=s s=-292885+292885 w=V<s s=j-V end end end end else if X<-973199+14721031 then if X<13740684-576292 then if X<-908098+13582277 then if X<13219633-602796 then if X<11709684-(-641639)then g[j]=E p=g[J]Y=650121+-650120 U=p+Y v=Z[U]y=u+v v=231403+-231147 X=y%v U=g[o]u=X v=P+U U=732782-732526 X=2910114-529554 y=v%U P=y else K=-169010+169010 O=#r R=O==K X=R and 11869769-609770 or 15174435-157791 end else g[j]=G X=-44093+2424653 end else if X<-351816+13311834 then j=a(2034+25599)s=429268+4642511 G=79202+8118226 T=j^s X=G-T G=a(-74513+102160)T=X X=G/T G={X}X=q[a(-338336+365968)]else G=e X=i X=e and 10163842-(-49355)or 599720-446342 end end else if X<-983636+14484015 then if X<-675489+14154913 then G={j}X=q[a(-370328-(-397978))]else s=g[h[999421-999415]]j=s==T X=-1019698+1261962 G=j end else if X<916171+12588491 then t=g[j]X=t and-358424+4137690 or 3355158-569566 W=t else X=true G={}g[h[-337919+337920]]=X X=q[a(841563+-813939)]end end end else if X<15215175-(-939478)then if X<15010422-(-254207)then if X<212416+14278516 then if X<14602944-374569 then T=a(-822529+850155)X=q[T]s=671898+-671898 j=g[h[767723+-767715]]T=X(j,s)X=67902+11765750 else G={}X=q[a(63980-36341)]end else O=681288+-681287 o=-655300-(-655301)K=#r R=D(O,K)O=w(r,R)K=g[P]R=nil A=O-o f=H(A)K[O]=f X=11696299-(-671194)O=nil end else if X<15481855-(-316207)then G=a(828348-800713)D=a(849842+-822186)X=q[G]n=a(466075+-438433)e=l(12533279-(-211262),{})T=g[h[-979450+979454]]s=q[D]H=q[n]n={H(e)}w={x(n)}H=-837854+837856 V=w[H]D=s(V)s=a(-826550+854180)j=T(D,s)T={j()}G=X(x(T))T=G j=g[h[-726052-(-726057)]]G=j X=j and 12700635-(-781946)or 910727+-668463 else X=true X=X and-46865-(-1021590)or 1048073+9204564 end end else if X<17206626-752775 then if X<17011220-757455 then f=N()A=a(-214829-(-242467))g[f]=W G=q[A]o=-1026146+1026246 A=a(696378+-668732)X=G[A]A=-793097-(-793098)G=X(A,o)A=N()o=271497-271497 g[A]=G X=g[H]J=501467-501212 G=X(o,J)Y=601485-601485 o=N()J=-524965-(-524966)g[o]=G Z=-125743-(-125745)X=g[H]c=471890+-471889 B=g[A]G=X(J,B)J=N()g[J]=G G=g[H]B=G(c,Z)Z=a(-472176+499830)v=a(789119+-761463)G=410110-410109 X=B==G B=N()G=a(454263+-426633)g[B]=X k=-930912-(-940912)y=q[v]U=g[H]X=a(-452602+480229)p={U(Y,k)}v=y(x(p))X=R[X]y=a(814374-786720)E=v..y c=Z..E X=X(R,G,c)Z=a(458652-431010)c=N()g[c]=X E=I(-506156+17168962,{H,f;i,s,j;O,B,c,A,J;o;e})G=q[Z]Z={G(E)}X={x(Z)}Z=X X=g[B]X=X and 12215507-865780 or 1175026-694040 else p=-891595-(-891597)X=828548+6245353 U=Z[p]p=g[c]v=U==p E=v end else if X<486483+16193880 then D=1018659+-1018658 j=g[h[-990683+990684]]V=89165+-89163 s=j(D,V)j=669987+-669986 T=s==j X=T and 216003+7430637 or 10959448-(-731022)G=T else X=g[h[385207-385197]]j=g[h[923758-923747]]T[X]=j X=g[h[325005-324993]]j={X(T)}G={x(j)}X=q[a(646934+-619313)]end end end end end end end X=#L return x(G)end,function(q)local a,X=-735778-(-735779),q[749131-749130]while X do T[X],a=T[X]-(-582307-(-582308)),a+(255317+-255316)if 342461+-342461==T[X]then T[X],g[X]=nil,nil end X=q[a]end end,function(q)for a=-886372-(-886373),#q,459225+-459224 do T[q[a]]=T[q[a]]+(1039238-1039237)end if M then local X=M(true)local x=L(X)x[a(-91222+118885)],x[a(-799066+826700)],x[a(82611-54967)]=q,D,function()return 820839+-2406532 end return X else return h({},{[a(549576+-521942)]=D,[a(98623-70960)]=q;[a(-46410+74054)]=function()return-2403356-(-817663)end})end end,function(q,a)local x=s(a)local M=function(M)return X(q,{M},a,x)end return M end return(V(10508160-708639,{}))(x(G))end)(getfenv and getfenv()or _ENV,unpack or table[a(-586819+614450)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
        end
})

local Tab = Window:MakeTab({

    Name = "99夜",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
	Name = "霖溺99夜",
	Callback = function()
     LnScript = "霖溺-免费版加载器"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ScriptLoader/refs/heads/main/Linni_FreeLoader.lua"))()
        end
})
