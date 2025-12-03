# NPC Engine - Language Selection Prompt
# Напоминание о выборе языка

tellraw @a ""
tellraw @a [{"text":"[NPC Engine] ","color":"aqua","bold":true},{"text":"Select language / Выберите язык:","color":"yellow"}]
tellraw @a ""
tellraw @a [{"text":"  [🇬🇧 English]  ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger npcs_engine_localization set 2"},"hoverEvent":{"action":"show_text","value":"Click to set English"}}]
tellraw @a [{"text":"  [🇷🇺 Русский]  ","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger npcs_engine_localization set 1"},"hoverEvent":{"action":"show_text","value":"Нажмите для выбора русского языка"}}]
tellraw @a ""
