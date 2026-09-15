local Dash = {}

function Dash.Execute(character)

    local root = character:WaitForChild("HumanoidRootPart")

    root.AssemblyLinearVelocity =
        root.CFrame.LookVector * 80

end

return Dash
