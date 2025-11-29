# Взаимодействие с NPC (вызывается при клике на манекена)

# Проверка что диалог не активен
execute if score @s npc.dialog_state matches 1.. run return 0

# Получить ID NPC
execute store result score @s npc.current_npc run data get entity @e[type=minecraft:mannequin,tag=npc.mannequin,limit=1,sort=nearest,distance=..5] data.npc_id

# Проверка что NPC найден
execute unless score @s npc.current_npc matches 1.. run return 0

# Загрузить диалоги NPC
function npcs:dialog/load_dialog_for_play

# Проверка что есть диалоги
execute store result score #total npc.temp if data storage npcs:current_dialog lines[]
execute if score #total npc.temp matches 0 run tellraw @s [{"text":"[NPC] ","color":"aqua"},{"text":"У этого NPC нет диалогов","color":"gray"}]
execute if score #total npc.temp matches 0 run return 0

# Запуск диалога
function npcs:dialog/start_play
