local Players = game:GetService('Players')

Players.PlayerAdded:Connect(function(plr)
	local StringValue = Instance.new('StringValue')
	
	StringValue.Parent = plr
	StringValue.Name = "CurrentArea"
	StringValue.Value = "Sector 1"
end)