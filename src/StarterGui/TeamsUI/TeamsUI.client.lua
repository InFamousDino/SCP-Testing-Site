--[[
local MainFrame = script.Parent.TeamFrame

local Teams = game:GetService('Teams')
local StarterGui = game:GetService('StarterGui')

-- I do not feel like finishing this today.

local RepStorage = game:GetService('ReplicatedStorage')

local TempClone = RepStorage:WaitForChild('TemplateJoinTeam')

for _, object in pairs(Teams:GetChildren()) do 

    local TemplateCard = TempClone:Clone()
    TemplateCard.Parent = MainFrame
end

--]]