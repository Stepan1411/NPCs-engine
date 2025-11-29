# Открытие редактора диалогов

tellraw @s ""
tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор диалогов","color":"yellow"}]
tellraw @s [{"text":"Выберите NPC для редактирования диалогов:","color":"gray"}]
tellraw @s ""

# Показать список NPC
execute as @e[type=marker,tag=npc.entity] run function npcs:dialog/editor/list_npc_item
