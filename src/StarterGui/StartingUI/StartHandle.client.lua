local ReplicatedStorage = game:GetService('ReplicatedStorage')
local AnimateUI = require(ReplicatedStorage.Modules:WaitForChild("AnimateUI"))
local ReplicatedFirst = game:GetService('ReplicatedFirst')

local StarterGui = game:GetService('StarterGui')

local Players = game:GetService('Players')

local GName = script.Parent.Background.GName
local GDesc = script.Parent.Background.GDesc

ReplicatedFirst:RemoveDefaultLoadingScreen()

local GNameText = "Foundation Site Echo"
local GDescText = "//: SCP Foundation, ▇▇/▇▇/▇▇▇▇"

local Sounds = workspace.Sounds

Sounds.BackgroundMusic:Play()
StarterGui:SetCore("TopbarEnabled", false)
wait(1) -- 1

Sounds.UI_Beep:Play()
AnimateUI.typeWrite(GName, GNameText, 0.1)
wait(1.5)

Sounds.UI_Beep:Play()
AnimateUI.typeWrite(GDesc, GDescText, 0.05)

local background = script.Parent.Background

wait(2) -- 2
if not game:IsLoaded() then
	game.Loaded:Wait()
end

background:TweenPosition(UDim2.new(0, 0, -1.1, 0))

wait(.1)

-- Stored below for Main Menu
-- StarterGui:SetCore("TopbarEnabled", true)

-- The Main Menu will handle the end of music and stuff