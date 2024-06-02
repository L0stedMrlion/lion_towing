Config = {}
Config.icon = "fa-solid fa-truck-pickup" -- Only fontawesome icons free https://fontawesome.com/search?o=r&m=free
Config.label = "Tow Vehicle" -- Text on the target
Config.distance = 2.0 -- Distance when you see the target on the vehicle
Config.groups = {['police']= 0} -- Only in this syntax, if you want add more just do {['police']= 0, ['sheriff']= 0 }
Config.Notifications = "chat" -- ox_lib/chat/other, if you want customize it just go to client/client.lua

Config.progressBarduration = 5000 -- DURATION IN MILISECONDS
Config.progressBarlabel = "🚗 Towing Vehicle"
Config.towingScenario = "WORLD_HUMAN_CLIPBOARD" -- https://github.com/DioneB/gtav-scenarios
-- If you want to edit more properties of the progressBar, go to client/client.lua

Config.WaitTimeBeforeDelete = 5000 -- IN MILISECONDS, Time when you tow and need to wait before the vehicle is deleted

Config.Locale = {
    ['towedsoon'] = "Vehicle will be towed soon"
}