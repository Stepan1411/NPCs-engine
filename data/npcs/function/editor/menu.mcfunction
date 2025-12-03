# Главное меню редактора в actionbar

# Russian menu
execute if score localization l matches 1 if score @s npc.menu_point matches 1 run title @s actionbar [{"text":"[📝 Создать NPC]","color":"green"},{"text":" | 📋 Список | 💬 Диалоги | 🎬 Тест диалога | ❌ Выход","color":"gray"}]
execute if score localization l matches 1 if score @s npc.menu_point matches 2 run title @s actionbar [{"text":"📝 Создать NPC | ","color":"gray"},{"text":"[📋 Список]","color":"yellow"},{"text":" | 💬 Диалоги | 🎬 Тест диалога | ❌ Выход","color":"gray"}]
execute if score localization l matches 1 if score @s npc.menu_point matches 3 run title @s actionbar [{"text":"📝 Создать NPC | 📋 Список | ","color":"gray"},{"text":"[💬 Диалоги]","color":"aqua"},{"text":" | 🎬 Тест диалога | ❌ Выход","color":"gray"}]
execute if score localization l matches 1 if score @s npc.menu_point matches 4 run title @s actionbar [{"text":"📝 Создать NPC | 📋 Список | 💬 Диалоги | ","color":"gray"},{"text":"[🎬 Тест диалога]","color":"light_purple"},{"text":" | ❌ Выход","color":"gray"}]
execute if score localization l matches 1 if score @s npc.menu_point matches 5 run title @s actionbar [{"text":"📝 Создать NPC | 📋 Список | 💬 Диалоги | 🎬 Тест диалога | ","color":"gray"},{"text":"[❌ Выход]","color":"red"}]

# English menu
execute if score localization l matches 2 if score @s npc.menu_point matches 1 run title @s actionbar [{"text":"[📝 Create NPC]","color":"green"},{"text":" | 📋 List | 💬 Dialogs | 🎬 Test Dialog | ❌ Exit","color":"gray"}]
execute if score localization l matches 2 if score @s npc.menu_point matches 2 run title @s actionbar [{"text":"📝 Create NPC | ","color":"gray"},{"text":"[📋 List]","color":"yellow"},{"text":" | 💬 Dialogs | 🎬 Test Dialog | ❌ Exit","color":"gray"}]
execute if score localization l matches 2 if score @s npc.menu_point matches 3 run title @s actionbar [{"text":"📝 Create NPC | 📋 List | ","color":"gray"},{"text":"[💬 Dialogs]","color":"aqua"},{"text":" | 🎬 Test Dialog | ❌ Exit","color":"gray"}]
execute if score localization l matches 2 if score @s npc.menu_point matches 4 run title @s actionbar [{"text":"📝 Create NPC | 📋 List | 💬 Dialogs | ","color":"gray"},{"text":"[🎬 Test Dialog]","color":"light_purple"},{"text":" | ❌ Exit","color":"gray"}]
execute if score localization l matches 2 if score @s npc.menu_point matches 5 run title @s actionbar [{"text":"📝 Create NPC | 📋 List | 💬 Dialogs | 🎬 Test Dialog | ","color":"gray"},{"text":"[❌ Exit]","color":"red"}]
