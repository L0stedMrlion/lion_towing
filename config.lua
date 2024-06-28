Config = {}

-- TARGET SETTINGS
Config.target = "ox" -- ox_target/ox or qb-target/qb
Config.icon = "fas fa-car-side" -- Only fontawesome icons free https://fontawesome.com/search?o=r&m=free
Config.label = "Tow Vehicle" -- Text on the target
Config.distance = 2.0 -- Distance when you see the target on the vehicle
Config.jobs = {['police']= 0} -- For more groups {['police']= 0, ['sheriff']= 0 } or just "police"

-- PROGRESSBAR SETTINGS / If you want edit more go to client/client.lua
Config.progressBarduration = 5000 -- DURATION IN MILISECONDS
Config.progressBarlabel = "🚗 Towing Vehicle" -- TEXT ON THE PROGRESSBAR
Config.towingScenario = "WORLD_HUMAN_CLIPBOARD" -- https://github.com/DioneB/gtav-scenarios
Config.WaitTimeBeforeDelete = 8000 -- IN MILISECONDS, Time when you tow and need to wait before the vehicle is deleted

Notify = function(title, desciption, duration) -- SET HERE YOUR OWN NOTIFICATIONS
    lib.notify({
        title = title,
        description = desciption,
        icon = 'fas fa-car-side',
        iconColor = "#db9d00",
        duration = duration
    })
end