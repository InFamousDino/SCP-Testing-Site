game.Workspace.ActivateCP.ClickDetector.MouseClick:Connect(function()
	
	local debounce = false
	
	local CollectionService = game:GetService("CollectionService")
	local TaggedParts = CollectionService:GetTagged("MainLights")
	
	local CPActive = false
	
	_G.CodePurpleActivated = false
	
	local ActivateCodePurple = game.ReplicatedStorage:WaitForChild('ACodePurple')
	local DeactivateCodePurple = game.ReplicatedStorage:WaitForChild('DCodePurple')
	if debounce == false then
		debounce = true
		
		if CPActive == true then
			_G.CodePurpleActivated = false
			CPActive = false
			DeactivateCodePurple:FireAllClients()

			for _, TaggedParts in pairs(TaggedParts) do
				TaggedParts.BrickColor = BrickColor.new('Institutional white')
				TaggedParts.SpotLight.Color = Color3.fromRGB(255, 255, 255)
			end
		end
		
		if CPActive == false then
			_G.CodePurpleActivated = true
			CPActive = true
			ActivateCodePurple:FireAllClients()
			
			workspace.Sounds.CPAlert:Play()
			
			
			for _, TaggedParts in pairs(TaggedParts) do
				TaggedParts.BrickColor = BrickColor.new('Royal purple')
				TaggedParts.SpotLight.Color = Color3.fromRGB(98, 37, 209)
			end
		end

		
		-- Change Lights and Start Alarm here.
		
		wait(5)
		debounce = false
	end
end)

local Players = game:GetService('Players')
Players.PlayerAdded:Connect(function(plr)
	if plr:IsInGroup(5581334) then
        plr.TeamColor = BrickColor.new("White")
	else
		plr.TeamColor = BrickColor.new("Bright orange")
    end
end)

local RefreshChr = game.ReplicatedStorage:WaitForChild('RefreshChr')

RefreshChr.OnServerEvent:Connect(function(plr)
	plr:LoadCharacter()
end