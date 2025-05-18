local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vuideptrai/Hud/main/main.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "vuideptrai",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "MyScriptConfig"
})

-- Tab Script Farm
local TabFarm = Window:MakeTab({Name = "Script Farm"})

TabFarm:AddButton({
    Name = "Redz Hub",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
        }
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
        end)
        if not success then
            warn("Lỗi khi load Redz Hub: "..err)
        else
            print("Đã tải Redz Hub thành công!")
        end
    end
})

-- Tab Fix Lag
local TabFixLag = Window:MakeTab({Name = "Fix Lag"})

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
            if setfpscap then setfpscap(30) end
        end)
        print("Đã fix lag thành công!")
    end
})
