workspace:FindFirstChild("Beast") then
        msg("Executed 2 times! Returning...")
        return
    end
    local EnabledBool = Instance.new("BoolValue", workspace)
    EnabledBool.Name = "Beast"
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Beast Mode By Ulll", true)
    wait(2)
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Extra Help by SmilerManface", true)
    wait(1)
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption(
        "ULLL Beast Mode script succesfully loaded (version 0,5)",
        true
    )
    coroutine.wrap(
        function()
            while true do
                wait(281)
                game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          
      coroutine.wrap(function()
    while true do
        wait(0.0005)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door.Open.SoundId = "rbxassetid://833871080"
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("Door"):FindFirstChild("Door").Material = "Rock"
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("Door"):FindFirstChild("Door"):FindFirstChild("Sign").Material = "Rock"
    end
end)()
     
    local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local entity = Instance.new("Part")
entity.Size = Vector3.new(5, 5, 5)
entity.Position = Vector3.new(0, 50, 0)
entity.Anchored = false 
entity.BrickColor = BrickColor.new("Bright black")
entity.Material = Enum.Material.SmoothPlastic
entity.Parent = game.Workspace

local decal = Instance.new("Decal")
decal.Texture = "rbxassetid://_20250124_130125934.png" -- Thay ID bằng ID hình ảnh của bạn
decal.Face = Enum.NormalId.Front
decal.Parent = entity

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://0_20250124125028" -- Thay ID bằng ID âm thanh của bạn
sound.Looped = true 
sound.Volume = 100
sound.Parent = entity
sound:Play()


local speed = 10


local function shakeEffect()
    local shakeMagnitude = 5
    entity.Position = entity.Position + Vector3.new(
        math.random(-shakeMagnitude, shakeMagnitude),
        math.random(-shakeMagnitude, shakeMagnitude),
        math.random(-shakeMagnitude, shakeMagnitude)
    )
end

local attackRange = 10
local function attackPlayer(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local distance = (player.Character.HumanoidRootPart.Position - entity.Position).Magnitude
        if distance <= attackRange then
            
            shakeEffect(500)
            
            player.Character.Humanoid.Health = player.Character.Humanoid.Health - 10
        end
    end
end

RunService.Stepped:Connect(function()
    
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - entity.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
            end
        end
    end

    if closestPlayer and closestPlayer.Character then
        local direction = (closestPlayer.Character.HumanoidRootPart.Position - entity.Position).Unit
        entity.Position = entity.Position + direction * speed * RunService.Heartbeat:Wait()
        attackPlayer(closestPlayer)
    end
end)

   local Workspace = game.Workspace


local function spawnRandomEntity()
   
    local entity = Instance.new("Part")
    entity.Size = Vector3.new(
    )
    entity.Position = Vector3.new(
        math.random(-50, 50),
        math.random(10, 30),
        math.random(-50, 50),
      
    )

    entity.Name = "RandomEntity"

    )
    bodyVelocity.MaxForce = Vector3.new(1000, 1000, 1000)
    bodyVelocity.Parent = entity

    return entity
end

while true do
    spawnRandomEntity() 
    wait(math.random(460,600))
end
