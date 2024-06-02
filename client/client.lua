local vehicleOptions = {
    icon = Config.icon,
    label = Config.label,
    distance = Config.distance,
    groups = Config.groups,
    onSelect = function(data)
        if lib.progressBar({
            duration = Config.progressBarduration,
            label = Config.progressBarlabel,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = true,
                combat = true,
            },
            anim = { scenario = Config.towingScenario }
        }) then
            if Config.Notifications == "ox_lib" then
                lib.notify({
                    title = 'Towing',
                    description = Config.Locale['towedsoon'],
                    icon = "fa-solid fa-car",
                    iconColor = '#FFA500',
                    duration = 3000
                })
            elseif Config.Notifications == "chat" then
                TriggerEvent('chatMessage', Config.Locale['towedsoon'])
            elseif Config.Notifications == "other" then
                -- Implement your notifications
            end
            Wait(Config.WaitTimeBeforeDelete)
            TriggerServerEvent('lion_towing:delete', NetworkGetNetworkIdFromEntity(data.entity))
            end
    end
}

exports.ox_target:addGlobalVehicle(vehicleOptions)
