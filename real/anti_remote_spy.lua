if not game:IsLoaded() then game.Loaded:Wait() end

local LogService = game:FindService('LogService')
local MessageOut = LogService.MessageOut

local CoreGui = game:FindService('CoreGui')
local StarterGui = game:FindService('StarterGui')

local Strings = {'remote', 'remoteevent', 'remotespy'}
local GUIs = {'remote', 'spy', 'remotespy', 'simplespy', 'closurespy', 'scriptscanner', 'modulescanner', 'upvaluescanner', 'constantscanner', 'turtlespy', 'copy lol'}

MessageOut:Connect(function(Message)
Message = string.lower(Message)
   for _, v in ipairs(Strings) do
       if string.find(Message, v) then
           repeat until nil
        end
    end
end)

if StarterGui:GetCore("DevConsoleVisible") == true then repeat until nil end
spawn(function() --// DevConsole not in CoreGui when it hasn't been opened before :(
    local DevConsoleMaster = CoreGui:WaitForChild('DevConsoleMaster')
    local DevConsoleWindow = DevConsoleMaster:FindFirstChild('DevConsoleWindow')
    
    if StarterGui:GetCore("DevConsoleVisible") == true then repeat until nil end
    DevConsoleWindow:GetPropertyChangedSignal('Visible'):Connect(function()
        if DevConsoleWindow.Visible then
            DevConsoleWindow.Visible = not DevConsoleWindow.Visible
            repeat until nil
        end
    end)
end)

CoreGui.ChildAdded:Connect(function(Child) task.wait(.1)
local Name = Child.Name
Name = string.lower(Name)

for _, v in ipairs(GUIs) do
    if string.find(Name, v) then
        repeat until nil
    end
end

-- GUID Name Check (Mostly for Hydroxide)
if string.len(Name) == 38 and string.match(Name, '{') then repeat until nil end
if string.len(Name) == 36 then repeat until nil end
if string.len(Name) == 9 then task.wait(.5)
    if string.len(Name) == 38 and string.match(Name, '{') or  string.len(Name) == 36 then repeat until nil end end
end)

for _,k in ipairs(CoreGui:GetChildren()) do
local Name = k.Name
Name = string.lower(Name)
    for _, v in ipairs(GUIs) do
        if string.find(Name, v) then
            repeat until nil
        end
    end
end
