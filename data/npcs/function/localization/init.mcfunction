# NPC Engine - Localization Initialization
# Инициализация системы локализации

# Create localization scoreboard
scoreboard objectives add l dummy

# Create trigger for language switching
scoreboard objectives add npcs_engine_localization trigger

# Check if language is already set, if not set to default (2 = English)
execute unless score localization l matches 1..2 run scoreboard players set localization l 2

# Enable trigger for all players
scoreboard players enable @a npcs_engine_localization
