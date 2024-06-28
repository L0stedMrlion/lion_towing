lib.locale()

if Config.target == "ox" or Config.target == "ox_target" then
local vehicleOptions = {
    icon = Config.icon,
    label = Config.label,
    distance = Config.distance,
    groups = Config.jobs,
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
            Notify("Towing", locale("towedsoon"), 2500)
            Wait(Config.WaitTimeBeforeDelete)
            TriggerServerEvent('lion_towing:tow', NetworkGetNetworkIdFromEntity(data.entity))
            Notify("Towing", locale("towed"), 2500)
            end
    end
}
exports.ox_target:addGlobalVehicle(vehicleOptions)

elseif Config.target == "qb" or Config.target == "qb-target" then
    local vehicleOptions = {
        {
            label = Config.label,
            icon = Config.icon,
            job = Config.jobs,
            action = function(entity)
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
                    Notify("Towing", locale("towedsoon"), 2500)
                    Wait(Config.WaitTimeBeforeDelete)
                    TriggerServerEvent('lion_towing:tow', NetworkGetNetworkIdFromEntity(entity))
                    Notify("Towing", locale("towed"), 2500)
                end
            end
        }
    }

    exports['qb-target']:AddTargetModel(GetHashKey('adder'), {
        options = vehicleOptions,
        distance = Config.distance
    })
end