RegisterNetEvent('lion_towing:tow',function (entity)
    DeleteEntity(NetworkGetEntityFromNetworkId(entity))
end)

if not lib.checkDependency('ox_lib', '3.22.2') then
    error()
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then
        return
    end

    if resourceName ~= "lion_towing" then
        lib.print.warn("The resource name must be 'lion_towing'. Current resource name: " .. resourceName)
        StopResource(resourceName)
    end
end)
