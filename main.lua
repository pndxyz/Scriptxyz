repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local list = {
    -- Build an Island
    [101949297449238] = "https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/Free/AdoptMe.lua",
    
    -- Anime RangerX
    [72829404259339] = "https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/Free/GOFISHING.lua"
}

local placeId = game.PlaceId

if list[placeId] then
    local success, err = pcall(function()
        loadstring(game:HttpGet(list[placeId]))()
    end)
    if not success then
        warn("Failed to load script: "..err)
    end
else
    print("No script available for this game.")
end
