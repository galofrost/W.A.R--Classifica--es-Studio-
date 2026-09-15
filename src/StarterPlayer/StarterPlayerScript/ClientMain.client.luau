local Players = game:GetService("Players")

local jogador = Players.LocalPlayer

local personagem = jogador.Character or jogador.CharacterAdded:Wait()

local humanoid = personagem:WaitForChild("Humanoid")

local controllers = assert(script.Parent, "ClientMain must have a parent"):WaitForChild("Controllers")

local InputController = require(
    controllers:WaitForChild("InputController")
)

local MovementController = require(
    controllers:WaitForChild("MovementController")
)

InputController.Start(humanoid)

MovementController.Start(personagem)