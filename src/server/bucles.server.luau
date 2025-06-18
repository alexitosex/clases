--// while loop
--[[
    local condition = true
    
    task.delay(5, function()
        condition = false
    end)
    
    while condition do
        print("Ejecutando bucle...")
        task.wait(1)
    end
    
    print("Bucle terminado.")\
]]

--// repeat loop
--[[
    local counter = 0
    
    repeat
        counter += 1
        print("Ejecutando bucle...")
        task.wait(1)
    until counter == 5
    
    print("Bucle terminado.")
]]

--// for loop
--[[
local stock = 50
for i = 1, stock do
    print("Generando item...")
end

local table = {
    item1 = Color3.new(1, 0, 0),
    item2 = Color3.new(0, 1, 0),
    item3 = Colfor index, child in workspace:GetChildren() do 
        if not child:IsA("BasePart") then
            continue
        end
    
        print("eliminar", child)
    end

or3.new(0, 0, 1)
}

for index, value in table do
    local part = Instance.new("Part")
    part.Name = index
    part.Color = value
    part.Parent = workspace
end
]]

--// break
--[[
    local count = 0
    while true do
        count += 1
        print("Ejecutando bucle...")
        if count == 10 then
            break
        end
    end
]]

--continue
--[[    
    for i = 1, 10 do
        if i == 5 then
            continue
        end
        print(i)
    end
    print("Bucle terminado.")
    for index, child in workspace:GetChildren() do 
        if not child:IsA("BasePart") then
            continue
        end
    
        print("eliminar", child)
    end
]]

-- for index, child in workspace:GetDescendants() do 
--     print(child)
-- end