local button = script.Parent

button.Size = UDim2.new(0, 200, 0, 50) -- Taille du bouton
button.Position = UDim2.new(0.5, -100, 0.5, -25) -- Position du bouton au centre de l'écran
button.Text = "Cliquez ici" -- Texte du bouton

button.MouseButton1Click:Connect(function()
    print("Bouton cliqué !") -- Action à réaliser lorsque le bouton est cliqué
    button.Text = "Vous avez cliqué !" -- Changer le texte du bouton après le clic
end)
