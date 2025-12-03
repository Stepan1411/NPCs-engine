# Открытие редактора диалогов

execute if score localization l matches 1 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Редактор диалогов","color":"yellow"}]
execute if score localization l matches 1 run tellraw @s [{"text":"Функция в разработке. Используйте тестовый диалог.","color":"gray"}]
execute if score localization l matches 2 run tellraw @s [{"text":"[NPC Editor] ","color":"aqua","bold":true},{"text":"Dialog Editor","color":"yellow"}]
execute if score localization l matches 2 run tellraw @s [{"text":"Feature in development. Use test dialog.","color":"gray"}]
