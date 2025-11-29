# Обновить отображение выбора в actionbar

# Получить текущий выбор
execute store result score #sel npc.temp run scoreboard players get @s npc.choice_selected

# Показать варианты в зависимости от выбранного
execute if score #sel npc.temp matches 0 run title @s actionbar ["",{"text":"► ","color":"gold"},{"nbt":"choices[0]","storage":"npcs:current_dialog","bold":true,"color":"yellow"},{"text":" ◄  ","color":"gold"},{"nbt":"choices[1]","storage":"npcs:current_dialog","color":"gray"}]
execute if score #sel npc.temp matches 1 run title @s actionbar ["",{"nbt":"choices[0]","storage":"npcs:current_dialog","color":"gray"},{"text":"  ► ","color":"gold"},{"nbt":"choices[1]","storage":"npcs:current_dialog","bold":true,"color":"yellow"},{"text":" ◄","color":"gold"}]
