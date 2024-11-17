local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local names = {
    "XD",
    "-_-",
    "@_@",
    "0-0",
    ":>",
    "`~`",
    "^^",
    "(//_//)",
    "Script fais par Asuna_0nO",
    "UwU"
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
