# Восстановление режима игры

execute if data storage npcs:temp {player:{gamemode:0}} run gamemode survival @s
execute if data storage npcs:temp {player:{gamemode:1}} run gamemode creative @s
execute if data storage npcs:temp {player:{gamemode:2}} run gamemode adventure @s
execute if data storage npcs:temp {player:{gamemode:3}} run gamemode spectator @s
