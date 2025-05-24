local ESX = exports['es_extended']:getSharedObject()

RegisterCommand('die', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    -- Check if the player has the "team" group
    if xPlayer and xPlayer.getGroup() == 'team' then
        if args[1] then
            local targetId = tonumber(args[1])
            local targetPlayer = ESX.GetPlayerFromId(targetId)

            -- If the target player was found
            if targetPlayer then
                TriggerClientEvent('kilian:die:killPlayer', targetPlayer.source)
                TriggerClientEvent('esx:showNotification', source, 'You killed the player with ID: ' .. targetId .. '.')
            else
                TriggerClientEvent('esx:showNotification', source, 'Player not found.')
            end
        else
            TriggerClientEvent('esx:showNotification', source, 'Please provide a player ID.')
        end
    else
        TriggerClientEvent('esx:showNotification', source, 'You do not have permission to use this command.')
    end
end, false)
