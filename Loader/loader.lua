local GamesList = game:GetService("HttpService"):JSONDecode(game:HttpGet("__",true))

local Utils = {IsLoaded = nil}

function Utils.Setup()
    local GotScript = nil
    
    return {
        CheckforGame = function(self)
            for i,v in pairs(GamesList) do 
                if tonumber(v.gameId) and tostring(v.script) and v.Status == true then 
                    if v.gameId == game.PlaceId then 
                        GotScript = v.script
                        Utils.IsLoaded = false
                        return;
                    end
                end
            end
        end,
        
        LOAD_SCRIPT = function(self)
            if (not Utils.IsLoaded) then 
                loadstring(game:HttpGet(GotScript))()
                Utils.IsLoaded = true;
                return;
            else
                return false
            end
        end
    }
end

local SetupGames = Utils.Setup()
SetupGames:CheckforGame()

repeat wait() 
    SetupGames:LOAD_SCRIPT()
until not SetupGames:LOAD_SCRIPT();
