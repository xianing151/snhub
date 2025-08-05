local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local Window = OrionLib:MakeWindow({Name = "SN脚本中心[key] ", HidePremium = false, SaveConfig = true,IntroText = "key", ConfigFolder = "xianing制作"})
setclipboard("1048659522")
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "sys"; Text ="群号已复制"; Duration = 4; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "HUB"; Text ="HUB加载成功"; Duration = 4; })
local AboutTab = Window:MakeTab({Name = "关于",Icon = "rbxassetid://4483345998",PremiumOnly = false})
AboutTab:AddParagraph("请进入qq群获取卡密","1048659522")
local Tab = Window:MakeTab({Name = "卡密",Icon = "rbxassetid://4483345998",PremiumOnly = false})
local input
Tab:AddTextbox({Name = "请输入卡密",Default = "",TextDisappear = true,Callback = function(Value)
input = Value
if input == "∇2024§XN_KM∏9R∆45" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xianing151/SNHUB/main/SN...hub.lua"))()
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "验证成功",Text = "脚本已加载",Duration = 3})
else
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "验证失败",Text = "卡密错误，请重新输入",Duration = 3})
end
end})
OrionLib:Init()
