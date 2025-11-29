# Вывод одного NPC в списке

# Получение типа
execute if score @s npc.entity_type matches 0 run data modify storage npcs:temp type_name set value "Манекен"
execute if score @s npc.entity_type matches 1 run data modify storage npcs:temp type_name set value "Сущность"

# Сохранение ID для телепортации
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.id

# Вывод информации
function npcs:npc/list_item_display with storage npcs:temp
