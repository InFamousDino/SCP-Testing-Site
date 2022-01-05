local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local target = workspace:FindFirstChild("RoateCameraAround")  -- The object to rotate around
local camera = workspace.CurrentCamera
camera.CameraType = Enum.CameraType.Scriptable
local rotationAngle = Instance.new("NumberValue")
local tweenComplete = false

local cameraOffset = Vector3.new(0, 10, 12)
local rotationTime = 15  -- Time in seconds
local rotationDegrees = 10
local rotationRepeatCount = -1  -- Use -1 for infinite repeats
local lookAtTarget = true  -- Whether the camera tilts to point directly at the target

local function updateCamera()
	if not target then return end
	camera.Focus = target.CFrame
	local rotatedCFrame = CFrame.Angles(0, math.rad(rotationAngle.Value), 0)
	rotatedCFrame = CFrame.new(target.Position) * rotatedCFrame
	camera.CFrame = rotatedCFrame:ToWorldSpace(CFrame.new(cameraOffset))
	if lookAtTarget == true then
		camera.CFrame = CFrame.new(camera.CFrame.Position, target.Position)
	end
end

-- Set up and start rotation tween
local tweenInfo = TweenInfo.new(rotationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, rotationRepeatCount)
local tween = TweenService:Create(rotationAngle, tweenInfo, {Value=rotationDegrees})
tween.Completed:Connect(function()
	tweenComplete = true
end)
tween:Play()

-- Update camera position while tween runs
RunService.RenderStepped:Connect(function()
	if tweenComplete == false then
		updateCamera()
	end
end)

