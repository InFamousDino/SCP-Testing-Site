local ReplicatedStorage = game:GetService('ReplicatedStorage')

local ActivateCP = ReplicatedStorage:WaitForChild('ACodePurple')
local DeactivateCP = ReplicatedStorage:WaitForChild('DCodePurple')

local AnimateUI = require(ReplicatedStorage.Modules:WaitForChild("AnimateUI"))

local TopBar = script.Parent.TopBar
local BottomBar = script.Parent.BottomBar

local EmptyText = " "

ActivateCP.OnClientEvent:Connect(function()
	local TopBarText = "[ Code Purple ]"
	local BottomBarText = "Has been declared, please follow proper protocols."

	AnimateUI.typeWrite(TopBar, TopBarText, 0.02)
	wait(.1)
	AnimateUI.typeWrite(BottomBar, BottomBarText, 0.02)
	
	wait(1)
	AnimateUI.typeWrite(TopBar, EmptyText, 0.02)
	AnimateUI.typeWrite(BottomBar, EmptyText, 0.02)
end)
