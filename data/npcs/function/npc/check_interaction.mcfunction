# Проверка взаимодействия с NPC

# Сохранить ID NPC из interaction в storage
execute store result storage npcs:temp clicked_npc_id int 1 run scoreboard players get @s npc.id

# Получить игрока который кликнул и вызвать on_click
execute on target run function npcs:npc/on_click

# Сброс данных interaction
data remove entity @s interaction
