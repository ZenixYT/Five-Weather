Citizen.CreateThread(function()
    local weatherPatterns = {
        "EXTRASUNNY",
        "CLEAR",
        "CLOUDS",
        "OVERCAST",
        "RAIN",
        "THUNDER",
        "FOGGY",
        "SNOW"
    }
    local currentWeatherPattern = 0
    
    while true do
        Citizen.Wait(600000)

        local newWeatherPattern
        repeat
            newWeatherPattern = math.random(1, #weatherPatterns)
        until newWeatherPattern ~= currentWeatherPattern
        currentWeatherPattern = newWeatherPattern

        TriggerClientEvent("changeWeather", -1, newWeatherPattern)
    end
end)