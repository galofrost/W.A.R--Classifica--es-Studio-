local AnimationController = {}

function AnimationController.PlayDash(humanoid)

    local animator = humanoid:WaitForChild("Animator")

    local animation = Instance.new("Animation")

    animation.AnimationId = "rbxassetid://1234567890"

    local track = animator:LoadAnimation(animation)

    track:Play()

end

return AnimationController