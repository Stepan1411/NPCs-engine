# Показать варианты выбора (макрос)

# Показать в actionbar - выбранный вариант выделен
$execute if score localization l matches 1 run title @s actionbar ["",{"text":"◄ ","color":"gray"},{"nbt":"choices[$(selected)]","storage":"npcs:current_dialog","bold":true,"color":"gold"},{"text":" ►","color":"gray"},{"text":" [Пробел]","color":"dark_gray"}]
$execute if score localization l matches 2 run title @s actionbar ["",{"text":"◄ ","color":"gray"},{"nbt":"choices[$(selected)]","storage":"npcs:current_dialog","bold":true,"color":"gold"},{"text":" ►","color":"gray"},{"text":" [Space]","color":"dark_gray"}]
