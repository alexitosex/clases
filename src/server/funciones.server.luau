local Debris = game:GetService("Debris")
local Players = game:GetService("Players")
function createHitbox(data): BasePart
    local hitbox = Instance.new("Part")
    hitbox.Size = data.size
    hitbox.Position = data.pos
    hitbox.Anchored = true
    hitbox.CanCollide = false
    hitbox.Transparency = .8
    hitbox.Color = data.color
    hitbox.Shape = data.form
    hitbox.Material = Enum.Material.SmoothPlastic
    hitbox.Parent = workspace

    return hitbox
end

function risaCarismatica(pos)
    local data = {
        size = Vector3.new(5, 5, 5),
        pos = pos,
        color = Color3.new(0, 0.8, 1),
        form = Enum.PartType.Ball
    }

    local hitbox = createHitbox(data)

    Debris:AddItem(hitbox, 5)
end

function curacionCercana(pos)
    local data = {
        size = Vector3.new(20, 20, 20),
        pos = pos,
        color = Color3.new(0.427450, 0.894117, 0.156862),
        form = Enum.PartType.Ball
    }
    local hitbox = createHitbox(data)
end

-- Players.PlayerAdded:Connect(function(player)
--     player.CharacterAdded:Connect(function(character)
--         local rootPart = character:WaitForChild("HumanoidRootPart")
--         risaCarismatica(rootPart.Position)

--         task.wait(5)
--         curacionCercana(rootPart.Position)
--     end)
-- end)