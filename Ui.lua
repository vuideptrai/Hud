-- Ui.lua
-- UI Script dùng thư viện OrionLib, hỗ trợ Deltax, Synapse, KRNL...

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vuideptrai/Hud/main/main.lua"))()

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
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
        end)
        if not success then
            warn("Lỗi khi load Redz Hub: "..err)
        else
            print("Đã tải Redz Hub thành công!")
        end
    end
})

TabFarm:AddButton({
    Name = "Load Vuideptrai Script",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/vuideptrai/Hud/main/main.lua"))()
        end)
        if not success then
            warn("Lỗi khi load Vuideptrai Script: "..err)
        else
            print("Đã tải Vuideptrai Script thành công!")
        end
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
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/maruscript1/main/script.lua"))()
        end)
        if not success then
            warn("Lỗi khi load Maru Script 1: "..err)
        else
            print("Đã tải Maru Script 1")
        end
    end
})

TabMaruFree:AddButton({
    Name = "Load Maru Script 2",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/maruscript2/main/script.lua"))()
        end)
        if not success then
            warn("Lỗi khi load Maru Script 2: "..err)
        else
            print("Đã tải Maru Script 2")
        end
    end
})

TabMaruFree:AddButton({
    Name = "Maru Auto Farm Free",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/maru-autofarm/main/script.lua"))()
        end)
        if not success then
            warn("Lỗi khi load Auto Farm Maru: "..err)
        else
            print("Đã kích hoạt Auto Farm Maru!")
        end
    end
})
