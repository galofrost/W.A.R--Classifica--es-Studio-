local MovementController = {}

function MovementController.Start(character)

    local humanoid = character:WaitForChild("Humanoid")

    humanoid.WalkSpeed = 16

end

return MovementController