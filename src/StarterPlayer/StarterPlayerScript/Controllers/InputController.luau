local ContextActionService = game:GetService("ContextActionService")

local parent = script.Parent
local systems = parent and parent:WaitForChild("Systems") or error("Systems folder not found")

local Sprint = require(systems:WaitForChild("Sprint"))

local InputController = {}

function InputController.Start(humanoid)
    ContextActionService:BindAction(
        "ToggleSprint",
        function(actionName, inputState, inputObject)
            if inputState == Enum.UserInputState.Begin then
                Sprint.Toggle(humanoid)
            end
        end,
        false,
        Enum.KeyCode.LeftControl
    )
end

return InputController