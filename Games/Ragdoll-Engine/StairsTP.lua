    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
    function Stairs(...)
        hrp.Anchored = true;
        local start = hrp.CFrame;
        for i = 0, 1, 1 do
            hrp.CFrame = start:Lerp(CFrame.new(...), i)
            wait(.1)
        end
        hrp.Anchored = false;
        end
            Stairs(0.155205, 183, -334.963)
            hrp.CFrame = CFrame.new(0.155205, 183, -334.963)
