-- UI Khởi tạo
local Window = MakeWindow({
    Hub = {
        Title = "vuideptrai",
        Animation = "hikaru là nô lệ:"
    },
})

-- Nút thu nhỏ
MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=83190276951914",
    Size = {60, 60},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

-- Tạo Tab
local Tab1o = MakeTab({Name = "Script Farm"})

-- Button để load Redz Hub
AddButton(Tab1o, {
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates", -- Pirates/Marines
            Translator = true     -- true/false
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})
� load Redz Hub
AddButton(Tab1o, {
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates", -- Pirates/Marines
            Translator = true     -- true/false
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})
