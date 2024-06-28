fx_version "cerulean"
game "gta5"
lua54 "true"

name "lion_towing"
author "Mrlion (@lostedmrlion)"
description "Standalone for towing vehicles"
version '2.0'
repository 'https://github.com/L0stedMrlion/lion_towing'

shared_scripts {
    '@ox_lib/init.lua',
    "config.lua"
}

client_scripts {
    "client/client.lua"
}

server_scripts {
    "server/server.lua"
}

files {
    'locales/*.json'
}
