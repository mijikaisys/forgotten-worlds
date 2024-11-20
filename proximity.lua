local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local character = player.Character or player.CharacterAdded:Wait()
local nameChangeDistance = 3 -- Distance à laquelle le nom change

-- Fonction pour changer le nom
local function changeName(newName)
    -- Filtrage du nom
    local filterArgs = {
        [1] = newName
    }
    playerGui.MenuName.ManageRoleplay.FilterMessage:InvokeServer(unpack(filterArgs))
    
    -- Changer le nom
    playerGui.MenuName.ManageRoleplay.ChangeName:FireServer()
end

-- Vérifie les joueurs à proximité
local function checkNearbyPlayers()
    local nearbyPlayers = {}
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            local distance = (character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < nameChangeDistance then
                table.insert(nearbyPlayers, otherPlayer.Name)
            end
        end
    end
    return nearbyPlayers
end

-- Boucle principale
while true do
    local nearbyPlayers = checkNearbyPlayers()

    if #nearbyPlayers > 0 then
        -- Si des joueurs sont proches, change le nom
        changeName("Proche de " .. table.concat(nearbyPlayers, ", "))
    else
        -- Retourne à un nom par défaut si rien n'est proche
        changeName("☆moumousse☆/♧mignonne♧/aime°pas°le°contact°physique")
    end

    wait(0.9) -- Vérifie toutes les secondes
end
