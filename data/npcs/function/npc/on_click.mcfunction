# Обработка клика на NPC (выполняется от имени игрока)

# Проверка что диалог не активен
execute if score @s npc.dialog_state matches 1.. run return 0

# Проверка cooldown
execute if score @s npc.cooldown matches 1.. run return 0

# Установка cooldown
scoreboard players set @s npc.cooldown 20

# Получить ID NPC из storage (сохранён в check_interaction)
execute store result score @s npc.current_npc run data get storage npcs:temp clicked_npc_id

# Проверка что NPC найден
execute unless score @s npc.current_npc matches 1.. run return 0

# Загрузить диалоги NPC
function npcs:dialog/load_dialog_for_play

# Проверка что есть диалоги
execute store result score #total npc.temp if data storage npcs:current_dialog lines[]
execute if score #total npc.temp matches 0 run return 0

# Запуск диалога
function npcs:dialog/start_play
