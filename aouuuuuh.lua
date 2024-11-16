game:GetService("Players").LocalPlayer:WaitForChild("PlayIt")
local function fireHitRemote()
    if debounce then return end
    debounce = true
    delay(0.01, function() debounce = false end)

    local args = {
    [1] = "Howl"
}

game:GetService("Players").LocalPlayer:WaitForChild("PlayIt"):FireServer(unpack(args))

        fireHitRemote()
    end
end
-- Fonction pour créer le bouton
local function createButton()
    -- Vérifiez si le bouton existe déjà et le supprimez si c'est le cas
    if Button then
        Button:Destroy()
    end

    -- Créez un nouveau ScreenGui et un bouton
    local ScreenGui = Instance.new("ScreenGui")
    Button = Instance.new("TextButton")

    -- Configuration du ScreenGui
    ScreenGui.Parent = Player:WaitForChild("PlayerGui")

    -- Configuration du bouton
    Button.Size = UDim2.new(0, 100, 0, 50) -- Taille du bouton
    Button.Position = UDim2.new(0.5, 200, 0.5, -25) -- Position du bouton
    Button.Text = "Fire Hit Remote"
    Button.BackgroundColor3 = Color3.fromRGB(0, 170, 0) -- Couleur de fond
    Button.TextColor3 = Color3.new(1, 1, 1) -- Couleur du texte
    Button.Parent = ScreenGui

    -- Connecter la fonction au clic du bouton
    Button.MouseButton1Click:Connect(fireHitRemote)
end
