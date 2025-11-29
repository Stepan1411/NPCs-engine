# Выбор действия в меню

# Сброс использования
scoreboard players set @s npc.use 0

# Проверка cooldown
execute if score @s npc.cooldown matches 1.. run return 0

# Установка cooldown
scoreboard players set @s npc.cooldown 10

# Выполнение действия
execute if score @s npc.menu_point matches 1 run function npcs:npc/create_prompt
execute if score @s npc.menu_point matches 2 run function npcs:npc/list
execute if score @s npc.menu_point matches 3 run function npcs:dialog/editor/open
execute if score @s npc.menu_point matches 4 run function npcs:dialog/test_start
execute if score @s npc.menu_point matches 5 run function npcs:editor/close

# Звук выбора
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
