local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local names = {
    "/s/o/p/h/i/a",
    "      ",
    " /s/o/p/h/i",
    "      ",
    "  /s/o/p/h",
    "      ",
    "   s/o/p",
    "      ",
    "    s/o",
    "      ",
    "     /s",
    "      ",
    "    /s/o",
    "      ",
    "   /s/o/p",
    "      ",
    "  /s/o/p/h",
    "      ",
    " /s/o/p/h/i",
    "      ", 
    -- Ajoute autant de noms que tu veux ici
}

local index = 1 -- Commencer par le premier nom

while true do
    local newName = names[index] -- Récupère le nom correspondant

    -- Filtrage du nom
    local filterArgs = {
        [1] = newName
    }
    playerGui.MenuName.ManageRoleplay.FilterMessage:InvokeServer(unpack(filterArgs))
    
    -- Changer le nom
    playerGui.MenuName.ManageRoleplay.ChangeName:FireServer()

    index = index + 1 -- Passe au nom suivant

    -- Réinitialiser l'index si on atteint la fin de la liste
    if index > #names then
        index = 1
    end

    wait(1) -- Attend 1 seconde avant de changer de nom à nouveau
end
