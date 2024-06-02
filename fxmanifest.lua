fx_version "cerulean"
game "gta5"

author "Mrlion (@lostedmrlion)"
description "Standalone for towing vehicles"
version "1.0"
lua54 "true"

shared_scripts {
    '@ox_lib/init.lua', -- DELETE IF YOU DONT WANT TO USE OX_LIB AS NOTIFY
    "config.lua",
}

client_scripts {
    "client/client.lua"
}

server_scripts {
    "server/server.lua"
}

dependencies {
    'ox_target'
}
