# Главное меню редактора в actionbar

execute if score @s npc.menu_point matches 1 run title @s actionbar [{"text":"[📝 Создать NPC]","color":"green"},{"text":" | 📋 Список | 💬 Диалоги | 🎬 Тест диалога | ❌ Выход","color":"gray"}]
execute if score @s npc.menu_point matches 2 run title @s actionbar [{"text":"📝 Создать NPC | ","color":"gray"},{"text":"[📋 Список]","color":"yellow"},{"text":" | 💬 Диалоги | 🎬 Тест диалога | ❌ Выход","color":"gray"}]
execute if score @s npc.menu_point matches 3 run title @s actionbar [{"text":"📝 Создать NPC | 📋 Список | ","color":"gray"},{"text":"[💬 Диалоги]","color":"aqua"},{"text":" | 🎬 Тест диалога | ❌ Выход","color":"gray"}]
execute if score @s npc.menu_point matches 4 run title @s actionbar [{"text":"📝 Создать NPC | 📋 Список | 💬 Диалоги | ","color":"gray"},{"text":"[🎬 Тест диалога]","color":"light_purple"},{"text":" | ❌ Выход","color":"gray"}]
execute if score @s npc.menu_point matches 5 run title @s actionbar [{"text":"📝 Создать NPC | 📋 Список | 💬 Диалоги | 🎬 Тест диалога | ","color":"gray"},{"text":"[❌ Выход]","color":"red"}]
