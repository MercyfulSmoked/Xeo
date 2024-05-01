
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))();

local Window = Rayfield:CreateWindow({
    Name = "Xeo Hub | Sol's RNG",
    LoadingTitle = "Xeo Hub",
    LoadingSubtitle = "by local",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Xeo Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "M6yHeeQxwS",
       RememberJoins = true
    }
 });

local MainTab = Window:CreateTab("Main", 0);

local Nodes = workspace:FindFirstChild("Nodes")

-- Variables
local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;

local Mouse = LocalPlayer:GetMouse();
local Camera = workspace.CurrentCamera;
local VIM = game:GetService("VirtualInputManager");
local HttpService = game:GetService("HttpService");
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Main Functions

function gf(Value)
    if Rayfield.Flags[Value] and Rayfield.Flags[Value].CurrentValue ~= nil then
        return Rayfield.Flags[Value].CurrentValue
    elseif Rayfield.Flags[Value] and Rayfield.Flags[Value].CurrentOption ~= nil then
        local option = Rayfield.Flags[Value].CurrentOption
        if type(option) == "table" then
            for _, v in pairs(option) do
                return v
            end
        else
            return option
        end
    end
end


function alive(player)
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then 
        return true
    end;
    return false
end;

local AutomationTab = MainTab:CreateSection('Automation', true)

function AutoCollect(t)
    if not t then return end

    while gf("toggleautocollect") and task.wait(0.1) do 
        for i,v in ipairs(workspace.Terrain:GetChildren()) do 
            if v.Name:find("Currency_") and v:GetAttribute("Position") and alive(LocalPlayer) then
                v.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
            end;
        end;
    end;
end;

MainTab:CreateToggle({
    Name = "Auto Collect",
    Info = "Auto Collects ground items for you",
    CurrentValue = false,
    Flag = "toggleautocollect",
    Callback = AutoCollect,
})

function AutoFarm(t)
    if not t then return end
    local function Closest()
        local closestNode = nil
        local closestDistance = math.huge
    
        for _, node in ipairs(Nodes:GetChildren()) do
            local nodePosition = node.Position
    
            local currentDistance = alive(LocalPlayer) and (nodePosition - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    
            if currentDistance < closestDistance then
                closestNode = node
                closestDistance = currentDistance
            end
        end
    
        return closestNode
    end
    

    while gf("toggleautofarm") and task.wait() do 
        local Part = Closest()
        if Part then
            repeat task.wait()
                ReplicatedStorage.Knit.Services.NodeService.RE.NodeClicked:FireServer(Part, true, false)
            until not v or not Part:IsDescendantOf(game) or not gf("toggleautofarm")
        end;
    end;
end;

MainTab:CreateToggle({
    Name = "Auto Farm",
    Info = "Auto Farms Near Nodes",
    CurrentValue = false,
    Flag = "toggleautofarm",
    Callback = AutoFarm,
})

local HatchTab = MainTab:CreateSection('Auto Hatch', true)

local Eggs = {}

for i,v in ipairs(workspace.Programmables.PetVendors:GetChildren()) do
    if v.Name:find('area') and not table.find(Eggs, v.Name) then 
        table.insert(Eggs, v.Name)
    end
end

local function cs(a, b)
    local numA = tonumber(a:match("%d+"))
    local numB = tonumber(b:match("%d+"))
    if numA and numB then
        return numA < numB
    else
        return a < b
    end
end

table.sort(Eggs, cs)

MainTab:CreateDropdown({
    Name = 'Select an Egg',
    Options = Eggs,
    CurrentOption = "area1 basic",
    MultiSelection = false,
    Flag = "eggselection",
    Callback = function(t)
    end,
})

local Open  = "1"
MainTab:CreateDropdown({
    Name = 'Select an Open Amount',
    Options = {"1", "3", "8"},
    CurrentOption = "1",
    MultiSelection = false,
    Flag = "openselection",
    Callback = function()
    end,
})

function AutoHatch(t)
    if not t then return end

    while gf("toggleautohatch") and task.wait() do 
        if LocalPlayer.PlayerGui:FindFirstChild("RewardScreen") and not LocalPlayer.PlayerGui.RewardScreen.Enabled then
            ReplicatedStorage.Knit.Services.VendorService.RF.Purchase:InvokeServer(gf("eggselection"), tonumber(gf("openselection")))
        end;
    end;
end;

MainTab:CreateToggle({
    Name = "Auto Hatch",
    Info = "Auto Hatchs eggs",
    CurrentValue = false,
    Flag = "toggleautohatch",
    Callback = AutoHatch,
})
