--esto es para crear un objeto y modificamos sus propiedades
local object = Instance.new("Part")
object.Parent = workspace
object.Anchored = true
object.CanCollide = false
object.Size = Vector3.new(5, 5, 5)
object.Transparency = .8
object.Color = Color3.new(0, 0.8, 1)
object.Position = Vector3.new(0, 2, 0)

local fire = Instance.new("Fire")
fire.Parent = object


--bueno los eventos son basicamente funciones que se ejecutan cuando algo suceda (el nombre del evento lo dice)
--por ejemplo cuando se toca algo en ingles se llama "touched"

object.Touched:Connect(function(hit)
    --que es un callback?
    --un callback es una funcion que se ejecuta cuando algo suceda y te puede devolver informacion
    --por ejemplo el hit
    --por ejemplo para concatenar es ..
    local character = hit.Parent
    if not character:FindFirstChild("Humanoid") then return end
    local humanoid =  character:FindFirstChild("Humanoid"):: Humanoid
    humanoid:TakeDamage(1)
end)
--o otro ejemplo cuando se destruye
--bueno en ingles es destroying

local function onDestroy()
    print("se ha destruido")
end

object.Destroying:Connect(onDestroy)

--esto es solo para que verifiques que el objeto se destruya
--si, es concatenar

--   object:Destroy()
