local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Config = require(
    ReplicatedStorage.WaitForChild("Shared").WaitForChild("Config")
)

local Sprint = {}

local NORMAL_SPEED = Config.Movement.NormalSpeed
local SPRINT_SPEED = Config.Movement.SprintSpeed

local active = false

function Sprint.Toggle(humanoid)
    active = not active

    if active then
        humanoid.WalkSpeed = SPRINT_SPEED
        print("Sprint: ATIVADO")
    else
        humanoid.WalkSpeed = NORMAL_SPEED
        print("Sprint: DESATIVADO")
    end
end

function Sprint.IsActive()
    return active
end

return Sprint