local Games = {
    [1962086868] = "Tower of Hell",
}

local GameName = Games[game.PlaceId] or (function() 

    local Game = "Unkown game."

    return Game

end)()

if GameName == "Tower of Hell" then
    local a = library:Window(GameName)
a:Button("Farm Coins/Level", "Execute it at the time you want and it will do it everytime when you pressed the button", function()
    local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;

    function tp(...)
        hrp.Anchored = true;
        local start = hrp.CFrame;
        for i = 0, 1, .005 do
            hrp.CFrame = start:Lerp(CFrame.new(...), i)
            wait(.1)
        end
        hrp.Anchored = false;
    end
    local rightNow = game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text;
    game:GetService("RunService").RenderStepped:connect(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.timer.timeLeft.Text == rightNow then
            tp(game:GetService("Workspace").tower.finishes.Finish.Position)
            wait(.5)
            hrp.CFrame = CFrame.new(game:GetService("Workspace").tower.finishes.Finish.Position)
        end
        wait(.5)
    end)
end)
end
