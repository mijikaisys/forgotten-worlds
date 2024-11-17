local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local names = {
    "tu es faible contre moi",
    "imagine pas êtreplusfort",
    "je te mange si tu m'énerve",
    "ne reste pas a côté de moi",
    "est tu au courant de ma force?"
    -- Ajoute autant de noms que tu veux ici
}

while true do
    local randomIndex = math.random(1, #names) -- Choisit un index aléatoire
    local newName = names[randomIndex] -- Récupère le nom correspondant

    -- Filtrage du nom
    local filterArgs = {
        [1] = newName
    }
    playerGui.MenuName.ManageRoleplay.FilterMessage:InvokeServer(unpack(filterArgs))
    
    -- Changer le nom
    playerGui.MenuName.ManageRoleplay.ChangeName:FireServer()

    wait(1) -- Attend 1 seconde avant de changer de nom à nouveau
end
