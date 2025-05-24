RegisterNetEvent('kilian:die:killPlayer')
AddEventHandler('kilian:die:killPlayer', function()
    local playerPed = PlayerPedId()
    SetEntityHealth(playerPed, 0)
end)



