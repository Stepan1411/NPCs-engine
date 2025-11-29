# Остановка камеры

# Сброс состояния
scoreboard players set @s npc.camera_state 0
scoreboard players set @s npc.camera_time 0

# Восстановление режима игры
execute if data storage npcs:temp player.gamemode run function npcs:camera/restore_gamemode

# Удаление эффектов
effect clear @s minecraft:slowness
effect clear @s minecraft:blindness

# Телепортация обратно
execute if data storage npcs:temp player.pos run function npcs:camera/restore_position
