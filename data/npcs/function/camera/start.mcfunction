# Запуск камеры для диалога

# Установка состояния камеры
scoreboard players set @s npc.camera_state 1
scoreboard players set @s npc.camera_time 0

# Сохранение режима игры
execute store result storage npcs:temp player.gamemode int 1 run data get entity @s playerGameType

# Переключение в режим наблюдателя для плавной камеры
gamemode spectator @s

# Эффект приближения
effect give @s minecraft:slowness 10 255 true
effect give @s minecraft:blindness 1 0 true
