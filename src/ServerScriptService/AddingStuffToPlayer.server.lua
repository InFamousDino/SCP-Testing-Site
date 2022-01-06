local Players = game:GetService('Players')

Players.PlayerAdded:Connect(function(Player)
	local StringValue = Instance.new('StringValue')
	
	StringValue.Parent = Player
	StringValue.Name = "CurrentArea"
	StringValue.Value = "Sector 1"
end)