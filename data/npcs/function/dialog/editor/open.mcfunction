# Открытие редактора диалогов

tellraw @s ""
execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор диалогов","color":"yellow"}]
execute if score localization l matches 1 run tellraw @s [{"text":"Выберите NPC для редактирования диалогов:","color":"gray"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Dialog Editor","color":"yellow"}]
execute if score localization l matches 2 run tellraw @s [{"text":"Select NPC to edit dialogs:","color":"gray"}]
tellraw @s ""

# Показать список NPC
execute as @e[type=marker,tag=npc.entity] run function npcs:dialog/editor/list_npc_item
