# Показать строку с выбором

# Копировать данные выбора в current_dialog для отображения
data modify storage npcs:current_dialog choices set from storage npcs:temp current_line.choices
data modify storage npcs:temp current_line_text set from storage npcs:temp current_line.text

# Подсчитать количество вариантов
execute store result score @s npc.choice_count if data storage npcs:current_dialog choices[]

# Сбросить счётчики чтобы не срабатывало сразу
scoreboard players set @s npc.jump 0
scoreboard players set @s npc.cooldown 20

# Начать выбор
scoreboard players set @s npc.choice_state 1
scoreboard players set @s npc.choice_selected 0

# Сохранить текущий поворот
execute store result score @s npc.temp run data get entity @s Rotation[0] 1

# Показать текст вопроса
execute store result storage npcs:temp npc_id int 1 run scoreboard players get @s npc.current_npc
function npcs:dialog/show_at_npc_macro with storage npcs:temp
