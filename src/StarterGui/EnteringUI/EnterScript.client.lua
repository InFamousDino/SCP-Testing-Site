local player = game:GetService('Players').LocalPlayer
local character = game:GetService('Players').LocalPlayer.Character
local humanoid = character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AnimateUI = require(ReplicatedStorage.Modules:WaitForChild("AnimateUI"))

local currentarea = player:WaitForChild('CurrentArea')

local debounce = false

humanoid.Touched:Connect(function(hit)
	if debounce == false then
		if hit.Name == "Sector2Entry" then
			debounce = true
			
			local EmptyText = " "
			local label = script.Parent.EnterText
			
			if currentarea.Value == "Sector 1" then
				currentarea.Value = "Sector 2T"
				local AnimatedTextEnter = "[ Entering Sector 2 ]"

				AnimateUI.typeWrite(label, AnimatedTextEnter, 0.1)
				
			elseif currentarea.Value == "Sector 2T" then
				currentarea.Value = "Sector 1"
				local AnimatedTextExit = "[ Entering Sector 1 ]"

				AnimateUI.typeWrite(label, AnimatedTextExit, 0.1)
			end
			
			wait(.5)
			label.Text = " "
			
			debounce = false
		end
		
		if hit.Name == "Sector3Entry" then
			debounce = true

			local EmptyText = " "
			local label = script.Parent.EnterText

			if currentarea.Value == "Sector 2T" then
				currentarea.Value = "Sector 3T"
				local AnimatedTextEnter2 = "[ Entering Sector 3 ]"

				AnimateUI.typeWrite(label, AnimatedTextEnter2, 0.1)

			elseif currentarea.Value == "Sector 3T" then
				currentarea.Value = "Sector 2T"
				local AnimatedTextExit2 = "[ Entering Sector 2 ]"

				AnimateUI.typeWrite(label, AnimatedTextExit2, 0.1)
			end

			wait(.5)
			label.Text = " "

			debounce = false
		end
	end
	
	if hit.Name == "Sector1Check" then
		if currentarea.Value == "Sector 2" then
			currentarea.Value = "Sector 1"
		end
	end
	
	if hit.Name == "Sector2Check" then
		if currentarea.Value == "Sector 1" then
			currentarea.Value = "Sector 2"
		end
	end
	
	if hit.Name == "Sector2TCheck" then
		if currentarea.Value == "Sector 3T" then
			currentarea.Value = "Sector 2T"
		end
	end
	
	if hit.Name == "Sector3TCheck" then
		if currentarea.Value == "Sector 2T" then
			currentarea.Value = "Sector 3T"
		end
	end
end)