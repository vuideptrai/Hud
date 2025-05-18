-- Ui.lua
-- UI Script dùng thư viện OrionLib, hỗ trợ Deltax, Synapse, KRNL...

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
    Name = "vuideptrai",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "MyScriptConfig"
})

local TabFarm = Window:MakeTab({
    Name = "Script Farm"
})

TabFarm:AddButton({
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})

local TabFixLag = Window:MakeTab({
    Name = "Fix Lag"
})

TabFixLag:AddButton({
    Name = "Tối Ưu Game (Fix Lag)",
    Callback = function()
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Material = Enum.Material.SmoothPlastic
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") then
                v:Destroy()
            end
        end
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            if setfpscap then
                setfpscap(30)
            end
        end)
        print("Đã fix lag thành công!")
    end
})

local TabMaruFree = Window:MakeTab({
    Name = "Maru Free"
})

TabMaruFree:AddButton({
    Name = "Load Maru Script 1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/maruscript1/main/script.lua"))()
        print("Đã tải Maru Script 1")
    end
})

TabMaruFree:AddButton({
    Name = "Load Maru Script 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/maruscript2/main/script.lua"))()
        print("Đã tải Maru Script 2")
    end
})

TabMaruFree:AddButton({
    Name = "Maru Auto Farm Free",
    Callback = function()
        print("Kích hoạt Auto Farm Maru miễn phí")
        -- Thêm code auto farm hoặc load script ở đây
    end
})
