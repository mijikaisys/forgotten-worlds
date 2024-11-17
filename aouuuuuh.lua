-- Crée un LocalScript et place-le dans StarterPlayerScripts

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
local button = Instance.new("TextButton")

-- Propriétés du bouton
button.Size = UDim2.new(0, 100, 0, 30) -- Taille réduite du bouton
button.Position = UDim2.new(0.8, -50, 0.5, -15) -- Déplacement vers la droite
button.Text = "aouuuh" -- Texte affiché sur le bouton
button.Parent = screenGui -- Ajoute le bouton à la ScreenGui

-- Fonction exécutée lorsque le bouton est cliqué
button.MouseButton1Click:Connect(function()
    local args = {
        [1] = "Howl"
    }

    game:GetService("Players").LocalPlayer.PlayerGui.Emotes.PlaySound.PlayIt:FireServer(unpack(args))
end)
