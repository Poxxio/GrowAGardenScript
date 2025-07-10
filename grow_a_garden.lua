local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Función para generar semillas
local function generateSeeds(seedType, amount)
    for i = 1, amount do
        local seed = Instance.new("Tool")
        seed.Name = seedType
        seed.Parent = player.Backpack
    end
end

-- Función para generar mascotas
local function generatePets(petType, amount)
    for i = 1, amount do
        local pet = Instance.new("Model")
        pet.Name = petType
        pet.Parent = player.Character
    end
end

-- Ejemplo de uso
generateSeeds("SunflowerSeed", 10) -- Genera 10 semillas de girasol
generatePets("CuteKitten", 5)      -- Genera 5 mascotas de gatito lindo
