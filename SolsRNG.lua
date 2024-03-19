repeat task.wait() until game:IsLoaded()


local Players = game:GetService("Players")
local lp = Players.LocalPlayer

repeat task.wait() until lp.PlayerGui:FindFirstChild("BeforePlaying") and not lp.PlayerGui.BeforePlaying.LoadingFrame.LoadingBar.Visible

local krampus;
if string.find(identifyexecutor(), "Krampus") then
    krampus = true
end;
task.spawn(function()
    if lp and lp.PlayerGui then
        local beforePlayingGui = lp.PlayerGui:FindFirstChild("BeforePlaying")
        if beforePlayingGui then
            local loadingFrame = beforePlayingGui:FindFirstChild("LoadingFrame")
            if loadingFrame then
                local startButton = loadingFrame:FindFirstChild("Start")
                if startButton and startButton:IsA("TextButton") then
                    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.BeforePlaying.LoadingFrame.Start.MouseButton1Click)
                end
            end
        end
    end
end);

repeat task.wait() until not game:GetService("Players").LocalPlayer.PlayerGui.BeforePlaying.LoadingFrame.Visible and game:GetService("Players").LocalPlayer.PlayerGui.BeforePlaying.DarkFrame.Transparency == 1
repeat task.wait() until game.Players.LocalPlayer.Character ~= nil
if not getgenv().WebHook then
    getgenv().WebHook = ""
end;

local buff = workspace.Map.BuffGivers["Basic Blessing"]
if buff.Position == Vector3.new(161.022, 121.234, 336.504) then
    buff.Position = buff.Position - Vector3.new(0, 4, 0)
end;


local VirtualUser = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

getgenv().Loading = true

if getgenv().Library then
    getgenv().Library:Unload()
end

for i,v in ipairs(game.CoreGui:GetChildren()) do 
    if v.Name == "ScreenGui" then
        v:Remove()
    end;
end;

for i,v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do 
    if v:IsA("Tool") then
        for _,g in ipairs(v:GetChildren()) do
            if g:IsA("BasePart") then
                g.CanCollide = false
            end;
        end;
    end;
end;

for i,v in ipairs(game.Workspace:GetChildren()) do 
    if v.Name == "Part" then
        v:Destroy()
    end;    
end;

local gui = lp.PlayerGui

repeat wait() until gui:FindFirstChild("MainInterface")
local mainInterface = gui.MainInterface

if mainInterface:FindFirstChild("Teleport") then
    mainInterface.Teleport.Visible = false
end

local Parts = {
    [3] = {
        Size = Vector3.new(25, 1, 25),
        CFrame = CFrame.new(252.399994, -6, -31474.5, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    },
    [5] = {
        Size = Vector3.new(12, 0.25, 12),
        CFrame = CFrame.new(236.899994, 102.625, 62, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    },
    [7] = {
        Size = Vector3.new(18, 10, 10),
        CFrame = CFrame.new(372.19281, 112.213875, 77.5055237, 0.898794055, -0.438371181, 0, 0.438371181, 0.898794055, 0, 0, 0, 1),
    },
    [8] = {
        Size = Vector3.new(21, 7, 15),
        CFrame = CFrame.new(228.085297, 105.508972, 79.8901062, 0.592790723, 0.429539263, 0.681245387, -0.590167284, 0.807268262, 0.00453922991, -0.547997952, -0.404739529, 0.732041121),
    },
    [9] = {
        Size = Vector3.new(14.300000190734863, 4.400000095367432, 12.100000381469727),
        CFrame = CFrame.new(219.129974, 111.951996, 88.5727463, 0.694658399, 0, -0.719339788, 0, 1, 0, 0.719339788, 0, 0.694658399),
    },
    [10] = {
        Size = Vector3.new(11.100000381469727, 5.099999904632568, 13.5),
        CFrame = CFrame.new(208.277145, 114.59964, 107.75, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1),
    },
    [11] = {
        Size = Vector3.new(10.100000381469727, 5.699999809265137, 48.80000305175781),
        CFrame = CFrame.new(401.760254, 128.816864, 94.599205, -2.80971317e-08, -0.642787457, 0.766044557, -1.02265183e-08, 0.766044557, 0.642787457, -1, 1.02265183e-08, -2.80971317e-08),
    },
    [12] = {
        Size = Vector3.new(5.800000190734863, 1.7000000476837158, 6.199999809265137),
        CFrame = CFrame.new(417.581604, 146.440628, 92.8774261, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    [13] = {
        Size = Vector3.new(13, 4, 10),
        CFrame = CFrame.new(274.5, 101.500954, 126.75, 1, 0, 0, 0, 0.866025388, 0.5, 0, -0.5, 0.866025388),
    },
    [14] = {
        Size = Vector3.new(10, 5, 10),
        CFrame = CFrame.new(265.834106, 101.769951, 135.444382, -2.18556924e-08, -0.49999997, 0.866025448, -5.85621507e-09, 0.866025448, 0.49999997, -1, 5.85621507e-09, -2.18556924e-08),
    },
    [15] = {
        Size = Vector3.new(12, 1.5, 10),
        CFrame = CFrame.new(265.366791, 106.233932, 203.564072, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    [16] = {
        Size = Vector3.new(9.6, 1, 12),
        CFrame = CFrame.new(252.949997, 105.540001, 212.761993, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044, 0, 0.965925813),
    },
    [17] = {
        Size = Vector3.new(5.8, 1, 12),
        CFrame = CFrame.new(245.804001, 107.728996, 220.679001, 0.262002558, 0.219846249, -0.939692676, -0.0296955407, 0.975082517, 0.219846249, 0.964610219, -0.0296955407, 0.262002558),
    },
    [18] = {
        Size = Vector3.new(6.599999904632568, 1.399999976158142, 6.599999904632568),
        CFrame = CFrame.new(230.689835, 109.083931, 225.372253, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    [19] = {
        Size = Vector3.new(6.400000095367432, 2.5, 7.300000190734863),
        CFrame = CFrame.new(220.523651, 109.536705, 232.868881, 0.95105654, 0.135464102, -0.277742594, 0, 0.898794055, 0.438371092, 0.309016943, -0.416915685, 0.854803979),
    },
    [20] = {
        Size = Vector3.new(6,1,11.4),
        CFrame = CFrame.new(217.458603, 111.083931, 248.613037, 1, 0, 0, 0, 0.994521916, -0.104528457, 0, 0.104528457, 0.994521916),
    },
    [21] = {
        Size = Vector3.new(4, 1, 14.800000190734863),
        CFrame = CFrame.new(217.678757, 112.452835, 289.271729, 0.719339788, 0, 0.694658399, 0, 1, 0, -0.694658399, 0, 0.719339788),
    },
    [22] = {
        Size = Vector3.new(4, 1, 12.6),
        CFrame = CFrame.new(228.440628, 112.983932, 302.620972, 0.978147626, 0, 0.2079117, 0, 1, 0, -0.2079117, 0, 0.978147626),
    },
    [23] = {
        Size = Vector3.new(4, 0.800000011920929, 12.199999809265137),
        CFrame = CFrame.new(234.079117, 113.283936, 317.552277, 0.978147626, 0, 0.2079117, -0.0145031661, 0.997564077, 0.0682320297, -0.207405239, -0.0697563738, 0.97576493),
    },
    [24] = {
        Size = Vector3.new(4, 0.7, 8.5),
        CFrame = CFrame.new(231.21, 113.87, 329.21, 0.893020213, 0.120368935, -0.433619887, -0.0380960405, 0.980326295, 0.193672597, 0.448401153, -0.156434357, 0.880036771),
    },
    [25] = {
        Size = Vector3.new(5, 1, 13.600000381469727),
        CFrame = CFrame.new(221.637222, 113.251442, 341.45816, 0.603980362, -0.149599075, -0.782833219, 0.0331593454, 0.98609215, -0.162858278, 0.796309114, 0.0724049658, 0.600540876),
    },
    [26] = {
        Size = Vector3.new(12, 1.600000023841858, 5.199999809265137),
        CFrame = CFrame.new(206.254303, 112.78, 346.4, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    [27] = {
        Size = Vector3.new(12.9, 1, 4.5),
        CFrame = CFrame.new(190.398163, 113.983932, 345.439941, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    [28] = {
        Size = Vector3.new(20.200000762939453, 1, 5.300000190734863),
        CFrame = CFrame.new(172.311005, 113.983932, 339.962067, 0.965925813, 0, -0.258819044, 0, 1, 0, 0.258819044, 0, 0.965925813),
    },
    [29] = {
        Size = Vector3.new(6.3, 1.8, 7.3),
        CFrame = CFrame.new(215.69397, 111.283936, 259.113373, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    [30] = {
        Size = Vector3.new(21.299999237060547, 13.199999809265137, 7),
        CFrame = CFrame.new(224.695679, 102.7314, 134.728561, 0.829037607, 0.559192896, 0, -0.559192896, 0.829037607, 0, 0, 0, 1),
    }
}


for i = 1, 30 do
    if Parts[i] then
        local p = Instance.new("Part",game.Workspace)
        p.Anchored = true
        p.CFrame = Parts[i]["CFrame"]
        p.Size = Parts[i]["Size"] + Vector3.new(1,0,1)
    end;
end;

for i,v in ipairs(workspace.Map.DirtMountain.Dirts.Mountain:GetChildren()) do
    if v:IsA("Part") and v.Position == Vector3.new(411.5, 120.5, 91.5) then
        v.Size = Vector3.new(17,37,7)
    end;
end;

local EST = {}

getgenv().Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/MercyfulSmoked/localhub/main/Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/MercyfulSmoked/localhub/main/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/MercyfulSmoked/localhub/main/Savemanager.lua'))()


local Window = Library:CreateWindow({
    Title = "Xeo | Sol's RNG";
    Center = true;
    AutoShow = true;
})

S = {
    GettingBlessed = false;
}

local Tabs = {
    Main = Window:AddTab('Main');
    Misc = Window:AddTab('Misc');
    UI = Window:AddTab('Crafting');
    Auras = Window:AddTab('Auras');
    Teleports = Window:AddTab('Teleports');
    ['Settings'] = Window:AddTab('Settings');
}

local Automation = Tabs.Main:AddLeftGroupbox('Automation')
local AutoDiscord = Tabs.Main:AddRightGroupbox('Discord')
local Misc = Tabs.Misc:AddRightGroupbox('Misc')
local AutoUse = Tabs.Misc:AddLeftGroupbox('Auto Use')
local Atmo = Tabs.Misc:AddRightGroupbox('Sky')
local UI = Tabs.UI:AddLeftGroupbox('Crafting')
local Auras = Tabs.Auras:AddLeftGroupbox('Auras')
local Teleports = Tabs.Teleports:AddLeftGroupbox('Teleports')
local Teleports2 = Tabs.Teleports:AddRightGroupbox('Teleports')
local Storage = Tabs.Auras:AddRightGroupbox('Storage')
local Crafting = Tabs.UI:AddRightGroupbox('Crafting')
local Discord = Tabs.Settings:AddLeftGroupbox('Discord')
local MenuGroup = Tabs.Settings:AddRightGroupbox('Menu')

MenuGroup:AddButton('Unload', function() getgenv().Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'Home', NoUI = true, Text = 'Menu keybind' })
getgenv().Library.ToggleKeybind = Options.MenuKeybind

if krampus then
    ThemeManager:SetLibrary(getgenv().Library)
    ThemeManager:SetFolder('XeoHub')
    ThemeManager:ApplyToTab(Tabs['Settings'])

    SaveManager:SetLibrary(getgenv().Library)
    SaveManager:SetFolder('Xeohub/SolsRNG')
    SaveManager:BuildConfigSection(Tabs['Settings'])
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
end;
local Mouse = lp:GetMouse()
local Camera = workspace.CurrentCamera

local Gearbasing = {"Good", "Rare", "Uncommon", "Common"}

local LuckGlove = {"Gear Basing", "Divinus", "Crystallized", "Rare"}

local LunarDevice = {"Gear Basing", "Rare", "Divinus", "Lunar"}

local SolarDevice = {"Gear Basing", "Solar", "Divinus", "Rare"}

local Eclipse = {"Gear Basing", "Solar", "Divinus", "Rare"}

local EclipseDevice = {"Lunar Device", "Solar Device", "Eclipse"}

local JackpotGauntlet = {"Gilded", "Gear Basing", "Rare", "Jackpot"}

local ExoGauntlet = {"Gear Basing", "Gilded", "Precious", "Undead", "Exotic"}

local RemoteFunction = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction

local ClientFunction = "Craft\n"..tostring(game.Players.LocalPlayer.UserId).."Client"
local Clientid = game.Players.LocalPlayer.UserId
local Client = RemoteFunction:FindFirstChild(ClientFunction)

local S = {
    GettingBlessed = false;
    Punishing = false;
}

local function check()
    if getgenv().Loading then
        return true
    else
        return false
    end
end

local function gf(flag)
    if Toggles[flag] then
        return Toggles[flag].Value
    elseif Options[flag] then
        return Options[flag].Value
    end
end

local function cancelPath()
    if path then
        path:Cancel()
        path = nil
    end
end
local function move(goal)
    task.spawn(function()
        while gf("ACT") or gf("ABB") do
            if gf("ACSEL") == "Walk" then
                if not goal or not goal:IsDescendantOf(game) then
                    warn("No goal found. Cancelling walk.")
                    return
                end

                local char = lp.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                local hum = char and char:FindFirstChildOfClass("Humanoid")

                if S.Punishing then
                    warn("Bugged")
                    return
                end;

                if not hrp or not hum then
                    return
                end

                local destination
                if S.GettingBlessed then
                    local p = goal.Position
                    destination = p
                elseif goal:IsA("Model") and goal:FindFirstChild("Casing") then
                    destination = goal.Casing.Position
                elseif goal:IsA("UnionOperation") then
                    destination = goal.Position
                else
                    warn("Invalid goal type. Cancelling walk.")
                    return
                end

                local distance = (destination - hrp.Position).Magnitude
                if distance <= 5 and not S.GettingBlessed then
                    warn("Already at destination.")
                    return
                elseif S.GettingBlessed and distance <= 2 then
                    warn("Already at destination.")
                    return
                end

                warn(distance)
                local path = game:GetService("PathfindingService"):CreatePath({
                    AgentRadius = 2,
                    WaypointSpacing = 0.5,
                    AgentCanJump = false,
                    AgentMaxSlope = 45
                })

                path:ComputeAsync(hrp.Position, destination)
                
                if not path.Status == Enum.PathStatus.NoPath then
                    warn("No path found to destination.")
                    return
                end
                
                local waypoints = path:GetWaypoints()

                for i, waypoint in ipairs(waypoints) do

                    if S.Punishing then
                        warn("Bugged")
                        return
                    end;

                    if not gf("ACT") and not gf("ABB") then
                        cancelPath()
                        return
                    end

                    if not goal or not goal:IsDescendantOf(game) then
                        warn("Target object destroyed. Recomputing path.")
                        cancelPath()
                        return
                    end

                    if distance <= 5 and not S.GettingBlessed then
                        warn("Already at destination.")
                        return
                    elseif S.GettingBlessed and distance <= 2 then
                        warn("Already at destination.")
                        return
                    end

                    hum:MoveTo(waypoint.Position)
                    hum.MoveToFinished:Wait()
                end
            end
        end
    end);
end

local function NearestDropped()
    local closestPart
    local minDistance = math.huge
    for _, part in ipairs(workspace.DroppedItems:GetChildren()) do
        local distance
        if part:IsA("Model") and part:FindFirstChild('Casing') then
            distance = (lp.Character.HumanoidRootPart.Position - part.Casing.Position).magnitude
        elseif part:IsA("UnionOperation") then
            distance = (lp.Character.HumanoidRootPart.Position - part.Position).magnitude
        end
        if distance and distance < minDistance and part and part:IsDescendantOf(game) then
            if part:FindFirstChild("Casing") then
                closestPart = part.Casing
            else
                closestPart = part
            end;
            minDistance = distance
        end
    end
    return closestPart
end

local function Serverhop()
    local http_request = http_request or request or httprequest or httpRequest or Request
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")

    local visitedJobsFile = "visited_jobs.txt"

    -- Check if the file exists, if not, create it with an empty JSON array
    if not isfile(visitedJobsFile) then
        writefile(visitedJobsFile, "[]")
    end

    -- Read the visited jobs from file
    local visitedJobs = {}
    local file = readfile(visitedJobsFile)
    if file then
        visitedJobs = HttpService:JSONDecode(file) or {}
    end

    local servers = {} -- Initialize the servers table here

    local function hasVisitedJob(jobId)
        for _, visitedJobId in ipairs(visitedJobs) do
            if visitedJobId == jobId then
                return true
            end
        end
        return false
    end

    local req = http_request({
        Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)
    })

    local body = HttpService:JSONDecode(req.Body)
    if body and body.data then
        for i, v in ipairs(body.data) do
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
                if not hasVisitedJob(v.id) then
                    table.insert(servers, 1, v.id)
                end
            end
        end
    end

    if #servers > 0 then
        local selectedServer = servers[math.random(1, #servers)]
        -- Save visited job to file
        table.insert(visitedJobs, selectedServer)
        writefile(visitedJobsFile, HttpService:JSONEncode(visitedJobs))
        TeleportService:TeleportToPlaceInstance(game.PlaceId, selectedServer, lp)
    end

end;

function teleport()
    local tp = workspace.antiFall

    firetouchinterest(tp, lp.Character.Torso, 0)
    firetouchinterest(tp, lp.Character.Torso, 1)
    if getgenv().ping then
        local split = string.split(getgenv().ping, '(')
        local ping = tonumber(split[1])
        if tonumber(ping) > 200 then
            Serverhop()
        else
            print(tonumber(ping) / 900)
            wait(tonumber(ping) / 900)
        end;
    end;
end;

local function functions_AutoCollect(t)
    if not t then
        cancelPath()
        return
    end
    
    task.spawn(function()
        while task.wait() and gf("ACT") do 
            if gf("ACSEL") == "Walk" then
                local v = NearestDropped()
                if v and v:IsDescendantOf(game) and not S.GettingBlessed then
                    local proximityPrompt
                    if v:IsA("Model") and v:FindFirstChild("Casing") then
                        proximityPrompt = v.Casing:FindFirstChild("ProximityPrompt")
                    elseif v:IsA("UnionOperation") then
                        proximityPrompt = v:FindFirstChild("ProximityPrompt")
                    end
            
                    if proximityPrompt then
                        task.wait()
                        local distance
                        if v:IsA("Model") and v:FindFirstChild("Casing") then
                            distance = (v.Casing.Position - lp.Character.HumanoidRootPart.Position).Magnitude
                        elseif v:IsA("UnionOperation") then
                            distance = (v.Position - lp.Character.HumanoidRootPart.Position).Magnitude
                        end
            
                        if distance and distance < 10 then
                            if v:IsA("Model") and v:FindFirstChild("Casing") then
                                move(v.Casing)
                            elseif v:IsA("UnionOperation") then
                                move(v)
                            end
                        end
                    end
                end
            elseif gf("ACSEL") == "Teleport" then
                local droppedItems = workspace.DroppedItems:GetChildren()
                if #droppedItems > 0 and NearestDropped() ~= nil and lp:DistanceFromCharacter(NearestDropped().Position) > 10 and not S.Punishing then
                    teleport()
                    wait(0.2)
                end
            end
        end
    end);
end


local function functions_AutoBlessed(t)
    if not t then
        S.GettingBlessed = false
        cancelPath()
        return
    end
    task.spawn(function()
        while task.wait() and gf("ABB") do 
            local p = workspace.Map.BuffGivers["Basic Blessing"]
            if p.Fog1.Enabled and gf("ACSEL") == "Walk" then
                S.GettingBlessed = true
                move(p)
            elseif p.Fog1.Enabled and gf("ACSEL") == "Teleport" then
                S.GettingBlessed = true
                teleport()
            else
                S.GettingBlessed = false
            end
        end
    end);
end

local function functions_AutoUseCoin(t)
    if not t then
        return
    end
    task.spawn(function()
        while task.wait(0.5) and gf("AUC") do 
            game:GetService("ReplicatedStorage").Modules.Inventory.UseItem:FireServer("Gilded Coin",1)
            game:GetService("ReplicatedStorage").Modules.Inventory.UseItem:FireServer("Coin",1)
        end
    end);
end

local function functions_AutoUseLucky(t)
    if not t then
        return
    end
    task.spawn(function()
        while task.wait(0.5) and gf("AUL") do 
            game:GetService("ReplicatedStorage").Modules.Inventory.UseItem:FireServer("Lucky Potion",1)
        end
    end);
end

local function functions_AutoUseSpeed(t)
    if not t then
        return
    end
    task.spawn(function()
        while task.wait(0.5) and gf("AUS") do 
            game:GetService("ReplicatedStorage").Modules.Inventory.UseItem:FireServer("Speed Potion",1)
        end
    end);
end

local function functions_Join()
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    
    function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
    end

    local Server, Next
    repeat
        local Servers = ListServers(Next)
        Server = Servers.data[1]
        Next = Servers.nextPageCursor
    until Server

    TPS:TeleportToPlaceInstance(_place, Server.id, lp)
end

local function getcave()
    local leave = game:GetService("Workspace").CaveMap.CaveExit.Teleporter
    local enter = game:GetService("Workspace").Map.DirtMountain.WaterFallSmallCave.HiddenCaveTeleporter
    if gf("Caver") == "Enter" then
        firetouchinterest(enter, lp.Character.Torso, 0)
        wait(0.1)
        firetouchinterest(enter, lp.Character.Torso, 1)
    elseif gf("Caver") == "Leave" then
        firetouchinterest(leave, lp.Character.Torso, 0)
        wait(0.1)
        firetouchinterest(leave, lp.Character.Torso, 1)
    end;
end;

local function craftgear(t)
    if not t then return end
    task.spawn(function()
        while gf("ACGB") and task.wait(1) do 
            for i,v in ipairs(Gearbasing) do 
                if gf("ACGB") then
                    Client:FireServer("Insert","Gear Basing",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Gear Basing")
        end;
    end);
end;

local function craftluck(t)
    if not t then return end
    task.spawn(function()
        while gf("ACLG") and task.wait(1) do 
            
            for i,v in ipairs(LuckGlove) do 
                if gf("ACLG") then
                    Client:FireServer("Insert","Luck Glove",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Luck Glove")
        end;
    end);
end;

local function craftlunar(t)
    
    if not t then return end
    task.spawn(function()
        while gf("ACLD") and task.wait(1) do 
            
            for i,v in ipairs(LunarDevice) do 
                if gf("ACLD") then
                    Client:FireServer("Insert","Lunar Device",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Lunar Device")
        end;
    end);
end;

local function craftsolar(t)
    
    if not t then return end
    task.spawn(function()
        while gf("ACSD") and task.wait(1) do 
            
            for i,v in ipairs(SolarDevice) do 
                if gf("ACSD") then
                    Client:FireServer("Insert","Solar Device",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Solar Device")
        end;
    end);
end;

local function crafteclipse(t)
    if not t then return end
    task.spawn(function()
        while gf("ACE") and task.wait(1) do 
            
            for i,v in ipairs(Eclipse) do 
                if gf("ACE") then
                    Client:FireServer("Insert","Eclipse",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Eclipse")
        end;
    end);
end;

local function crafteclipsedevice(t)
    
    if not t then return end
    task.spawn(function()
        while gf("ACED") and task.wait(1) do 
            
            for i,v in ipairs(EclipseDevice) do 
                if gf("ACED") then
                    Client:FireServer("Insert","Eclipse Device",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Eclipse Device")
        end;
    end);
end;

local function craftjackpot(t)
    if not t then return end
    task.spawn(function()
        while gf("ACJG") and task.wait(1) do 
            
            for i,v in ipairs(JackpotGauntlet) do 
                if gf("ACJG") then
                    Client:FireServer("Insert","Jackpot Gauntlet",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Jackpot Gauntlet")
        end;
    end);
end;

local function craftexo(t)
    if not t then return end
    task.spawn(function()
        while gf("ACEG") and task.wait(1) do 
            
            for i,v in ipairs(ExoGauntlet) do 
                if gf("ACEG") then
                    Client:FireServer("Insert","Exo Gauntlet",v)
                    wait(0.1)
                end
            end;
            wait(0.1)
            Client:FireServer("Craft","Exo Gauntlet")
        end;
    end);
end;

local function craftgilded(t)
    if not t then return end
    task.spawn(function()
        while gf("ACGC") and task.wait(1) do 
            
            Client:FireServer("Insert","Gilded Coin","Gilded",Clientid)
            wait(0.1)
            Client:FireServer("Craft","Gilded Coin",Clientid)
        end;
    end);
end;

local function Upgrader(t)
    if not t then return end
    task.spawn(function()
        while gf("AU") and task.wait(1) do 
            game:GetService("ReplicatedStorage").Remotes.AuraStorage:FireServer("UpgradeStorage")
        end;
    end);
end;

local function RemoveAura(t)
    if not t then return end
    task.spawn(function()
        while gf("RM1") and task.wait() do
            local inventoryFrame = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.AuraInventory.InventoryFrame
            local itemsHolder = inventoryFrame.ItemsHolder
            local seen = {}
        
            for _, v in ipairs(itemsHolder:GetChildren()) do
                if v.Name == "Template" then
                    for _, auraName in ipairs(v.BaseFrame:GetChildren()) do
                        if auraName:IsA("TextLabel") then
                            local name = auraName.Text
                            if seen[name] then
                                warn("Duplicate found:", name)
                            else
                                seen[name] = true
                            end
                        end
                    end
                end
            end
        end   
    end);
    
end;

local function joinDiscord()
    local INV_CODE = "5MNEQGDYkw"
    local httpService = game:GetService("HttpService")
    local httpRequest = http_request

    local request = httpRequest({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",

        Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
        },

        Body = httpService:JSONEncode({
            args = {code = INV_CODE},
            cmd = 'INVITE_BROWSER',
            nonce = httpService:GenerateGUID(false)
        })
    })
end


Automation:AddDropdown('ACSEL', {
    Values = {"Teleport", "Walk"},
    Default = 1,
    Multi = false,

    Text = 'Auto Collect Method',
    Tooltip = 'How to get to the items',
})

Automation:AddToggle('ACT', {
    Text = 'Auto Collect';
    Default = false;
    Tooltip = 'Teleports to items on the ground and picks them up!';
})

Automation:AddToggle('ABB', {
    Text = 'Auto Basic Blessing';
    Default = false;
    Tooltip = 'Works with Auto Collect!';
})

Automation:AddToggle('ASH', {
    Text = 'Auto Server-Hop';
    Default = false;
    Tooltip = 'Server hops when it has no items dropped';
})

Automation:AddSlider('CA', {
    Text = 'Collection Aura',
    Default = 8,
    Min = 8,
    Max = 10,
    Rounding = 1,
})

AutoDiscord:AddToggle('AD', {
    Text = 'Alert on pickup';
    Default = false;
    Tooltip = 'Alerts that you picked something up in discord!';
})

Toggles["ACT"]:OnChanged(function(v)
    if check() then return end
    functions_AutoCollect(gf("ACT"))
end)

Toggles["ABB"]:OnChanged(function(v)
    if check() then return end
    functions_AutoBlessed(gf("ABB"))
end)

Toggles["ASH"]:OnChanged(function(v)
    if check() then return end
    task.spawn(function()
        while gf("ASH") and task.wait(1) do 
            if #game.Workspace.DroppedItems:GetChildren() == 0 then
                Serverhop()
            end;
        end;
    end);
end)

AutoUse:AddToggle('AUC', {
    Text = 'Auto Use (Coins)';
    Default = false;
    Tooltip = 'Uses Coins for you!';
})

AutoUse:AddToggle('AUL', {
    Text = 'Auto Use (Lucky)';
    Default = false;
    Tooltip = 'Uses Lucky Potions for you!';
})

AutoUse:AddToggle('AUS', {
    Text = 'Auto Use (Speed)';
    Default = false;
    Tooltip = 'Uses Speed Potions for you!';
})

Toggles["AUC"]:OnChanged(function(v)
    if check() then return end
    functions_AutoUseCoin(gf("AUC"))
end)

Toggles["AUL"]:OnChanged(function(v)
    if check() then return end
    functions_AutoUseLucky(gf("AUL"))
end)

Toggles["AUS"]:OnChanged(function(v)
    if check() then return end
    functions_AutoUseSpeed(gf("AUS"))
end)

Misc:AddButton("Server-Hop", function()
    Serverhop()
end)

Misc:AddButton("Join Lowest Server", function()
    functions_Join()
end)

Misc:AddButton("Rejoin", function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

Atmo:AddToggle('ACS', {
    Text = 'Clear Vision';
    Default = false;
    Tooltip = 'Clears the ambience for better vision and FPS';
})

Toggles["ACS"]:OnChanged(function(v)
    if check() then return end
    task.spawn(function()
        while gf("ACS") and task.wait() do 
            game.Lighting.Atmosphere.Density = 0.3
            game.Lighting.Atmosphere.Density = 0.25
            game.Lighting.Brightness = 8
            game.Lighting.FogEnd = 100000
            game.Lighting.FogStart = 0
            game.Lighting:SetMinutesAfterMidnight(500)
        end;
    end);
end)

UI:AddButton("Crafting Menu", function()
    local shop = lp.PlayerGui.MainInterface.ShopFrame
    shop.Visible = not shop.Visible
end)

UI:AddButton("Potion Crafting Menu", function()
    local shop = lp.PlayerGui.MainInterface["Stella\nPotionCraftingFrame"]
    shop.Visible = not shop.Visible
end)

Crafting:AddToggle('ACGB', {
    Text = 'Auto Craft Gear Basing';
    Default = false;
    Tooltip = 'Crafts Gear Basing for you!';
})

Toggles["ACGB"]:OnChanged(function(v)
    if check() then return end
    craftgear(gf("ACGB"))
end)

Crafting:AddToggle('ACLG', {
    Text = 'Auto Craft Luck Glove';
    Default = false;
    Tooltip = 'Crafts Luck Glove for you!';
})

Toggles["ACLG"]:OnChanged(function(v)
    if check() then return end
    craftluck(gf("ACLG"))
end)

Crafting:AddToggle('ACLD', {
    Text = 'Auto Craft Lunar Device';
    Default = false;
    Tooltip = 'Crafts Lunar Device for you!';
})

Toggles["ACLD"]:OnChanged(function(v)
    if check() then return end
    craftlunar(gf("ACLD"))
end)

Crafting:AddToggle('ACSD', {
    Text = 'Auto Craft Solar Device';
    Default = false;
    Tooltip = 'Crafts Solar Device for you!';
})

Toggles["ACSD"]:OnChanged(function(v)
    if check() then return end
    craftsolar(gf("ACSD"))
end)

Crafting:AddToggle('ACE', {
    Text = 'Auto Craft Eclipse';
    Default = false;
    Tooltip = 'Crafts Eclipse for you!';
})

Toggles["ACE"]:OnChanged(function(v)
    if check() then return end
    crafteclipse(gf("ACE"))
end)

Crafting:AddToggle('ACED', {
    Text = 'Auto Craft Eclipse Device';
    Default = false;
    Tooltip = 'Crafts Eclipse for you!';
})

Toggles["ACED"]:OnChanged(function(v)
    if check() then return end
    crafteclipsedevice(gf("ACED"))
end)

Crafting:AddToggle('ACJG', {
    Text = 'Auto Craft Jackpot Gauntlet';
    Default = false;
    Tooltip = 'Crafts Jackpot Gauntlet for you!';
})

Toggles["ACJG"]:OnChanged(function(v)
    if check() then return end
    craftjackpot(gf("ACJG"))
end)

Crafting:AddToggle('ACEG', {
    Text = 'Auto Craft Exo Gauntlet';
    Default = false;
    Tooltip = 'Crafts Exo Gauntlet for you!';
})

Toggles["ACEG"]:OnChanged(function(v)
    if check() then return end
    craftexo(gf("ACEG"))
end)

Crafting:AddToggle('ACGC', {
    Text = 'Auto Craft Gilded';
    Default = false;
    Tooltip = 'Crafts Gilded Coins for you!';
})

Toggles["ACGC"]:OnChanged(function(v)
    if check() then return end
    craftgilded(gf("ACGC"))
end)

Storage:AddToggle('AU', {
    Text = 'Auto Upgrade Storage';
    Default = false;
    Tooltip = 'Upgrades your storage for you so you can store more auras!';
})

Toggles["AU"]:OnChanged(function(v)
    if check() then return end
    Upgrader(gf("AU"))
end)


Auras:AddToggle('RM1', {
    Text = 'Remove over 1';
    Default = false;
    Tooltip = 'Removes the extra Auras so you only have one of each';
})

Toggles["RM1"]:OnChanged(function(v)
    if check() then return end
    RemoveAura(gf("RM1"))
end)

Teleports:AddDropdown('TSEL', {
    Values = {"Potion"},
    Default = 1,
    Multi = false,

    Text = 'Teleports',
    Tooltip = 'Teleports you to the selected option.',
})

Teleports:AddToggle('Tele', {
    Text = 'Teleport';
    Default = false;
    Tooltip = 'Teleports to selected option';
})

Toggles["Tele"]:OnChanged(function(v)
    if not gf("Tele") then return end
    teleport()
end)

Teleports2:AddDropdown('Caver', {
    Values = {"Enter","Leave"},
    Default = 1,
    Multi = false,

    Text = 'Cave Teleportation',
    Tooltip = 'Where to teleport',
})

Teleports2:AddButton("Teleport", function()
    getcave()
end)


Discord:AddButton("Join Discord!", function()
    local INV_CODE = "5MNEQGDYkw"
    local httpService = game:GetService("HttpService")
    local httpRequest = http_request

    local request = httpRequest({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",

        Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
        },

        Body = httpService:JSONEncode({
            args = {code = INV_CODE},
            cmd = 'INVITE_BROWSER',
            nonce = httpService:GenerateGUID(false)
        })
    })
end)

local ContextActionService = game:GetService("ContextActionService")

local function bind()
    if (gf("ACT") or gf("ABB")) and gf("ACSEL") == "Walk" then
        return Enum.ContextActionResult.Sink
    end
end

ContextActionService:BindActionAtPriority("MovementSink", bind, false, 
    Enum.ContextActionPriority.High.Value,
    Enum.PlayerActions.CharacterLeft,
    Enum.PlayerActions.CharacterRight,
    Enum.PlayerActions.CharacterForward,
    Enum.PlayerActions.CharacterBackward
)

game:GetService("RunService").RenderStepped:Connect(function()
    task.spawn(function()
        if not check() then
            local character = game.Players.LocalPlayer.Character
            if character then
                local punishingAttribute = character:GetAttribute("Punishing")
                if punishingAttribute ~= nil then
                    S.Punishing = punishingAttribute
                end
            end
        end;
    end);

    task.spawn(function()
        getgenv().ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    end);

    task.spawn(function()
        if not check() then
            local v = NearestDropped()
            if v ~= nil and (v:IsA("UnionOperation") or (v:IsA("Model") and v:FindFirstChild("Casing"))) then
                local proximityPrompt
                local position
        
                if v:IsA("UnionOperation") then
                    proximityPrompt = v:FindFirstChild("ProximityPrompt")
                    position = v.Position
                elseif v:IsA("Model") and v:FindFirstChild("Casing") then
                    proximityPrompt = v.Casing:FindFirstChild("ProximityPrompt")
                    position = v.Casing.Position
                end
                if gf("CA") == nil then
                    Options["CA"]:SetValue(8)
                end;
                if proximityPrompt and gf("CA") ~= nil and lp:DistanceFromCharacter(position) <= gf("CA") then
                    fireproximityprompt(proximityPrompt)
                end
            end
        end
    end);
end)

local function sendWebhookMessage(embedData)
    local webhookUrl = getgenv().WebHook
    
    local payload = {
        ["embeds"] = {embedData}
    }
    
    local success, response = pcall(function()
        return request({
            Url = webhookUrl,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(payload)
        })
    end)
end

local function sendItemFoundEmbed(itemName)
    local embedData = {
        ["title"] = "Item Found!",
        ["description"] = "You picked up " .. itemName .. "!",
        ["color"] = tonumber("0x00FF00"),
        ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
    }
    
    sendWebhookMessage(embedData)
end

local function teleportToItem()
    wait(0.1)
    if gf("ACT") and not S.GettingBlessed and not S.Punishing then
        local nearestDropped = NearestDropped()
        local targetCFrame, foundItem = nil, false
        targetCFrame = nearestDropped.Position + Vector3.new(0, 4.5, 0)
        foundItem = true

        if foundItem and lp.Character ~= nil and lp.Character:FindFirstChild("HumanoidRootPart") then
            lp.Character.HumanoidRootPart.CFrame = CFrame.new(targetCFrame)
            local itemName
            if nearestDropped.Name == "Casing" then
                itemName = nearestDropped.Parent.Name
            else
                itemName = nearestDropped.Name
            end
            sendItemFoundEmbed(itemName)

            getgenv().Library:Notify(string.format('Collected %q', itemName))
            if gf("AD") then
                sendItemFoundEmbed(itemName)
            end
            return
        end
    elseif gf("ABB") and S.GettingBlessed then
        local targetCFrame = workspace.Map.BuffGivers["Basic Blessing"].CFrame
        lp.Character.HumanoidRootPart.CFrame = targetCFrame
    elseif gf("Tele") and gf("TSEL") == "Potion" then
        local targetCFrame = workspace.Map.etc.Stella.HumanoidRootPart.CFrame
        lp.Character.HumanoidRootPart.CFrame = targetCFrame
    end
end

lp.Character:GetAttributeChangedSignal("Teleport"):Connect(teleportToItem)

getgenv().Library.ToggleKeybind = Options.MenuKeybind
getgenv().Loading = false


task.spawn(function()
    if krampus then
        SaveManager:LoadAutoloadConfig()
    end;
end);
