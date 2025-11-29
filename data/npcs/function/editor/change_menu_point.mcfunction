# Изменение пункта меню

# Сохранение старого значения
scoreboard players operation @s npc.temp = @s npc.menu_point

# Обновление menu_point на основе слота (добавляем 1, т.к. слоты 0-8, а меню 1-5)
execute store result score @s npc.menu_point run data get entity @s SelectedItemSlot
scoreboard players add @s npc.menu_point 1

# Циклическое переключение (1-5)
execute if score @s npc.menu_point matches ..0 run scoreboard players set @s npc.menu_point 5
execute if score @s npc.menu_point matches 6.. run scoreboard players set @s npc.menu_point 1

# Звук навигации только если значение изменилось
execute unless score @s npc.temp = @s npc.menu_point run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.5
