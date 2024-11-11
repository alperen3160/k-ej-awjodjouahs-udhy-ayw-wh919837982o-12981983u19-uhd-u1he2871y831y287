           while task.wait() do
                local UserInputService = game:GetService("UserInputService")
                local CHeld = UserInputService:IsKeyDown(Enum.KeyCode.C)
                if CHeld == true then
                    game.workspace.CurrentCamera.FieldOfView = 12
                else
                    game.workspace.CurrentCamera.FieldOfView = 120					  
                end
            end
        end
