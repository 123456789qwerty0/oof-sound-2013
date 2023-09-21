-- Sound ID for the death sound
local deathSoundId = 14841221771

-- Function to play the death sound for a player
local function playDeathSound(player)
    local character = player.Character
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Died:Connect(function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. deathSoundId
            sound.Parent = character
            sound:Play()
        end)
    end
end

-- Connect the playDeathSound function to the PlayerAdded event
game.Players.PlayerAdded:Connect(playDeathSound)
