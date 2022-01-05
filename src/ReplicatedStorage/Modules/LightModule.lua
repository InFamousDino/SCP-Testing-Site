--[[

		[Made by SebsLore / O5-7]
		
		Color, use "LightMoudle.ChangeLighting(Color3.fromRGB(RGB here))"
		On is self explanitory, use true or false
		Sector is the Sector, either "S1", "S2", "S3" or "All". Make sure to have LightFolder and in that folder "S1", "S2" and "S3" as folders, put the lights for the sector in there.

		Full function: LightModule.ChangeLighting(Color3.fromRGB(255, 255, 255), true, "All")
		
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
