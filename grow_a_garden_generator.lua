local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Crear la interfaz de usuario
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Crear el contenedor principal
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.Parent = screenGui

-- Crear el título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Text = "Grow a Garden Generator"
title.TextSize = 24
title.TextScaled = true
title.Parent = mainFrame

-- Crear el apartado para generar semillas
local seedSection = Instance.new("Frame")
seedSection.Size = UDim2.new(1, 0, 0, 75)
seedSection.Position = UDim2.new(0, 0, 0.25, 0)
seedSection.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
seedSection.Parent = mainFrame

local seedLabel = Instance.new("TextLabel")
seedLabel.Size = UDim2.new(1, 0, 0, 25)
seedLabel.Position = UDim2.new(0, 0, 0, 0)
seedLabel.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
seedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
seedLabel.Text = "Generate seed"
seedLabel.TextSize = 18
seedLabel.TextScaled = true
seedLabel.Parent = seedSection

local seedDropdown = Instance.new("TextButton")
seedDropdown.Size = UDim2.new(1, 0, 0, 25)
seedDropdown.Position = UDim2.new(0, 0, 0.33, 0)
seedDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
seedDropdown.Text = "Select a seed"
seedDropdown.TextSize = 18
seedDropdown.TextScaled = true
seedDropdown.Parent = seedSection

local seedGenerateButton = Instance.new("TextButton")
seedGenerateButton.Size = UDim2.new(1, 0, 0, 25)
seedGenerateButton.Position = UDim2.new(0, 0, 0.66, 0)
seedGenerateButton.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
seedGenerateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
seedGenerateButton.Text = "Generate"
seedGenerateButton.TextSize = 18
seedGenerateButton.TextScaled = true
seedGenerateButton.Parent = seedSection

-- Crear el apartado para generar mascotas
local petSection = Instance.new("Frame")
petSection.Size = UDim2.new(1, 0, 0, 75)
petSection.Position = UDim2.new(0, 0, 0.66, 0)
petSection.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
petSection.Parent = mainFrame

local petLabel = Instance.new("TextLabel")
petLabel.Size = UDim2.new(1, 0, 0, 25)
petLabel.Position = UDim2.new(0, 0, 0, 0)
petLabel.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
petLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
petLabel.Text = "Generate pet"
petLabel.TextSize = 18
petLabel.TextScaled = true
petLabel.Parent = petSection

local petDropdown = Instance.new("TextButton")
petDropdown.Size = UDim2.new(1, 0, 0, 25)
petDropdown.Position = UDim2.new(0, 0, 0.33, 0)
petDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
petDropdown.Text = "Select a pet"
petDropdown.TextSize = 18
petDropdown.TextScaled = true
petDropdown.Parent = petSection

local petGenerateButton = Instance.new("TextButton")
petGenerateButton.Size = UDim2.new(1, 0, 0, 25)
petGenerateButton.Position = UDim2.new(0, 0, 0.66, 0)
petGenerateButton.BackgroundColor3 = Color3.fromRGB(0, 128, 0)
petGenerateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
petGenerateButton.Text = "Generate"
petGenerateButton.TextSize = 18
petGenerateButton.TextScaled = true
petGenerateButton.Parent = petSection

-- Función para generar semillas
local function generateSeeds(seedType)
    local seed = Instance.new("Tool")
    seed.Name = seedType
    seed.Parent = player.Backpack
    print("Generated seed:", seedType)
end

-- Función para generar mascotas
local function generatePets(petType)
    local pet = Instance.new("Model")
    pet.Name = petType
    pet.Parent = player.Character
    print("Generated pet:", petType)
end

-- Eventos para los botones
seedGenerateButton.MouseButton1Click:Connect(function()
    local selectedSeed = seedDropdown.Text
    if selectedSeed ~= "Select a seed" then
        generateSeeds(selectedSeed)
    end
end)

petGenerateButton.MouseButton1Click:Connect(function()
    local selectedPet = petDropdown.Text
    if selectedPet ~= "Select a pet" then
        generatePets(selectedPet)
    end
end)

-- Agregar opciones a los menús desplegables
local seeds = {"SunflowerSeed", "RoseSeed", "TulipSeed"} -- Añade todos los nombres de semillas del juego
local pets = {"CuteKitten", "FluffyPuppy", "HappyBird"} -- Añade todos los nombres de mascotas del juego

for _, seed in ipairs(seeds) do
    local option = Instance.new("TextButton")
    option.Size = UDim2.new(1, 0, 0, 25)
    option.Position = UDim2.new(0, 0, 0, 0)
    option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    option.Text = seed
    option.TextSize = 18
    option.TextScaled = true
    option.Parent = seedDropdown
    option.MouseButton1Click:Connect(function()
        seedDropdown.Text = seed
    end)
end

for _, pet in ipairs(pets) do
    local option = Instance.new("TextButton")
    option.Size = UDim2.new(1, 0, 0, 25)
    option.Position = UDim2.new(0, 0, 0, 0)
    option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    option.Text = pet
    option.TextSize = 18
    option.TextScaled = true
    option.Parent = petDropdown
    option.MouseButton1Click:Connect(function()
        petDropdown.Text = pet
    end)
end
