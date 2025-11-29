# Показать один NPC в списке для редактирования

execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.id

function npcs:dialog/editor/show_npc_button with storage npcs:temp
