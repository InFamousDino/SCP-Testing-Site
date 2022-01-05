--[[

		[Made by SebsLore / O5-7]
		
--]]

local LightModule = {}

LightModule.ChangeLighting = function(Color, On, Sector)
	
	if Sector == "All" then
		for _,i in pairs (workspace.LightFolder:GetDescendants()) do
			if i.Name == "NeonPart" then
				i.Color = Color
			end
			
			if i:IsA("PointLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end

			if i:IsA("SpotLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end
		end
	end
	
	if Sector == "S1" then
		for _,i in pairs (workspace.LightFolder.S1:GetDescendants()) do
			if i.Name == "NeonPart" then
				i.Color = Color
			end
			
			if i:IsA("PointLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end
			
			if i:IsA("SpotLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end
		end
	end
	
	if Sector == "S2" then
		for _,i in pairs (workspace.LightFolder.S2:GetDescendants()) do
			if i.Name == "NeonPart" then
				i.Color = Color
			end
			
			if i:IsA("PointLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end

			if i:IsA("SpotLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end
		end
	end
	
	if Sector == "S3" then
		for _,i in pairs (workspace.LightFolder.S3:GetDescendants()) do
			if i.Name == "SpotLight" then
				i.Color = Color
			end

			if i:IsA("PointLight") then
				i.Color = Color
				if On == false then
					i.Enabled = false
				else
					i.Enabled = true
				end
			end
		end
	end
end

return LightModule
