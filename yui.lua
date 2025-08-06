while true do 
  local args = {"1"} 
  game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Screen"):WaitForChild("Sack UI"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
  wait(0.01)
end
