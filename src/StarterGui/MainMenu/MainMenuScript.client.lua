local MainFrame = script.Parent.Frame

-- CFButton is Control Game
-- Pbutton is Play Button
-- TButton is Teams Button

local CFButton = MainFrame.CFButton
local PButton = MainFrame.PButton
local TButton = MainFrame.TButton

local Teams = game:GetService('Teams')
local StarterGui = game:GetService('StarterGui')
-- Play Button
PButton.MouseButton1Click:Connect(function(plr)
    MainFrame:TweenPosition(UDim2.new(0, 0, -1.1, 0))
    StarterGui:SetCore("TopbarEnabled", true)

	workspace.Sounds.BackgroundMusic:Stop()
end)

-- Teams Button
TButton.MouseButton1Click:Connect(function()

end)