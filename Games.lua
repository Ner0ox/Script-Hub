local Games = {
    [1962086868] = "Tower of Hell",
}

local GameName = Games[game.PlaceId] or (function() 

    local Game = "Unkown game."

    return Game

end)()
