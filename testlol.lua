local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()


local Aimbot_DeveloperSettings = Aimbot.DeveloperSettings
local Aimbot_Settings = Aimbot.Settings
local Aimbot_FOV = Aimbot.FOVSettings



--fuctionawd

local AddValues = function(Section, Object, Exceptions, Prefix)
	local Keys, Copy = {}, {}

	for Index, _ in next, Object do
		Keys[#Keys + 1] = Index
	end

	tablesort(Keys, function(A, B)
		return A < B
	end)

	for _, Value in next, Keys do
		Copy[Value] = Object[Value]
	end

	for Index, Value in next, Copy do
		if typeof(Value) ~= "boolean" or (Exceptions and tablefind(Exceptions, Index)) then
			continue
		end

		Section:Toggle({
			Name = stringgsub(Index, "(%l)(%u)", function(...)
				return select(1, ...).." "..select(2, ...)
			end),
			Flag = Prefix..Index,
			Default = Value,
			Callback = function(_Value)
				Object[Index] = _Value
			end
		})
	end

	for Index, Value in next, Copy do
		if typeof(Value) ~= "Color3" or (Exceptions and tablefind(Exceptions, Index)) then
			continue
		end

		Section:Colorpicker({
			Name = stringgsub(Index, "(%l)(%u)", function(...)
				return select(1, ...).." "..select(2, ...)
			end),
			Flag = Index,
			Default = Value,
			Callback = function(_Value)
				Object[Index] = _Value
			end
		})
	end
end


function Script()
    local Window = Library.CreateLib("👑ProxiesHacks | 🧨 Deadzone Classic | free 🎁", "Synapse")
    


    


    local Credits = Window:NewTab("🔫Aimbot")
    local CreditsSection = Credits:NewSection("legit")
  
  
    CreditsSection:NewButton("aimbow test", "Give you infinite yield script.", function()
        Name = "Enabled",
        Flag = "Aimbot_Enabled",
        Default = Aimbot_Settings.Enabled,
        Callback = function(Value)
            Aimbot_Settings.Enabled = Value
        end
    end)


    CreditsSection:NewToggle("aimbot (press and hold right click.)", "locking player", function(state)
        if state then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/alperen3160/k-ej-awjodjouahs-udhy-ayw-wh919837982o-12981983u19-uhd-u1he2871y831y287/refs/heads/main/aim.lua"))();

        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/alperen3160/k-ej-awjodjouahs-udhy-ayw-wh919837982o-12981983u19-uhd-u1he2871y831y287/refs/heads/main/aimclosed.lua"))();

        end
    end)

    CreditsSection:NewSlider("Aimfov", "aimbot fov.", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        
	Name = "Field Of View",
	Flag = "Aimbot_FOV_Radius",
	Default = Aimbot_FOV.Radius,
	Min = 0,
	Max = 200,
	Callback = function(Value)
		Aimbot_FOV.Radius = Value
	end
end)





end
if game.PlaceId == 3221241066 then
    Script()
end
