local Library = loadstring(game: HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Templat

local Window Library.CreateLib ("Name", "RJTheme3")

local Tab Window: NewTab("qwe")

local Section Tab: NewSection("Section Name")

Section: NewButton("зига", "ButtonInfo", function()

-- Найти персонажа игрока
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Ожидать загрузки Humanoid и других частей
local humanoid = character:WaitForChild("Humanoid")
local rightArm = character:WaitForChild("Right Arm")

-- Создать анимацию подъема правой руки
local function raiseRightArm()
    -- Убедиться, что R6 используется
    if humanoid.RigType == Enum.HumanoidRigType.R6 then
        -- Создать мотор для управления
        local motor = rightArm:FindFirstChild("Right Shoulder") or rightArm:WaitForChild("Right Shoulder")
        local originalC0 = motor.C0

        -- Повернуть руку на 110 градусов
        local angle = math.rad(110)
        motor.C0 = originalC0 * CFrame.Angles(-angle, 0, 0)

        -- Вернуть руку в исходное положение через 3 секунды
        wait(3)
        motor.C0 = originalC0
    else
        warn("Скин должен быть R6.")
    end
end

-- Пример вызова функции
raiseRightArm()

end)
