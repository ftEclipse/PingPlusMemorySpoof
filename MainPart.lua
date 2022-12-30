-- Ping & Memory Spoofer
local Settings = {
    range1 = 500,
    range2 = 800,
    
}

for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
    if v.Name == "PS_Button" and v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
        Memory = v.StatsMiniTextPanelClass.ValueLabel
    end
end

Memory:GetPropertyChangedSignal("Text"):Connect(function()
    local Random = math.random(Settings.range1,Settings.range2)
    Random = Random * 1.002
    Memory.Text = "".. Random .." MB"
end)

-- ping stuffz
local PerformanceStats = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats");
local PingLabel;
for I, Child in next, PerformanceStats:GetChildren() do
    if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
        PingLabel = Child.StatsMiniTextPanelClass.ValueLabel;
        break;
    end;
end;

local text = 101.2;
local text2 = 170.8;
PingLabel:GetPropertyChangedSignal("Text"):Connect(function()
    local Rping = math.random(text,text2)
    Rping = Rping * 1.002
    PingLabel.Text = "".. Rping .." ms"
end);
