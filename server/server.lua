RegisterNetEvent('lion_towing:delete',function (entity)
    DeleteEntity(NetworkGetEntityFromNetworkId(entity))
end)