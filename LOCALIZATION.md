# NPC Engine - Localization / Локализация

## Supported Languages / Поддерживаемые языки

- 🇷🇺 Russian (Русский) - ID: 1
- 🇬🇧 English (Английский) - ID: 2

## How to Change Language / Как изменить язык

### Method 1: Using Trigger Command / Метод 1: Использование триггера

In-game, use the trigger command:

```mcfunction
# For Russian / Для русского языка:
/trigger npcs_engine_localization set 1

# For English / Для английского языка:
/trigger npcs_engine_localization set 2
```

### Method 2: Direct Scoreboard / Метод 2: Прямое изменение scoreboard

```mcfunction
# For Russian / Для русского языка:
/scoreboard players set localization l 1

# For English / Для английского языка:
/scoreboard players set localization l 2
```

## Default Language / Язык по умолчанию

The default language is **English (ID: 2)**.

Язык по умолчанию - **Английский (ID: 2)**.

## Technical Details / Технические детали

The localization system uses:
- Scoreboard objective: `l` (for language)
- Trigger objective: `npcs_engine_localization`
- Language IDs: 1 = Russian, 2 = English

All messages in the engine check the `localization l` score and display the appropriate language using:
```mcfunction
execute if score localization l matches 1 run tellraw @s [Russian message]
execute if score localization l matches 2 run tellraw @s [English message]
```

## Files with Localization / Файлы с локализацией

The following files have been localized:

### Core / Ядро
- `core/load.mcfunction` - System load messages
- `core/tick.mcfunction` - Language switching triggers

### Editor / Редактор
- `editor/open.mcfunction` - Editor welcome screen
- `editor/close.mcfunction` - Editor close message

### NPC / НПС
- `npc/create_prompt.mcfunction` - NPC creation prompt
- `npc/create_entity_prompt.mcfunction` - Entity type selection
- `npc/create_player.mcfunction` - Mannequin creation message
- `npc/create_entity.mcfunction` - Entity NPC creation message
- `npc/delete.mcfunction` - NPC deletion message
- `npc/list.mcfunction` - NPC list display
- `npc/move_to_player.mcfunction` - NPC move message
- `npc/set_skin.mcfunction` - Skin change message
- `npc/interact.mcfunction` - No dialogs message

### Dialog / Диалоги
- `dialog/start.mcfunction` - Dialog start message
- `dialog/play_start.mcfunction` - Dialog play message
- `dialog/end.mcfunction` - Dialog end message
- `dialog/test_start.mcfunction` - Test dialog messages
- `dialog/editor_open.mcfunction` - Dialog editor messages

### Dialog Editor / Редактор диалогов
- `dialog/editor/open.mcfunction` - Dialog editor opening
- `dialog/editor/edit_npc.mcfunction` - NPC dialog editing
- `dialog/editor/show_dialog_list.mcfunction` - Dialog list display
- `dialog/editor/notify_added.mcfunction` - Line added notification
- `dialog/editor/notify_edited.mcfunction` - Line edited notification
- `dialog/editor/notify_deleted.mcfunction` - Line deleted notification
- `dialog/editor/notify_choice_added.mcfunction` - Choice added notification

### Dialog Choice / Выбор в диалоге
- `dialog/choice/show_choices.mcfunction` - Choice display
- `dialog/show_final_text.mcfunction` - Continue prompt

### Editor Menu / Меню редактора
- `editor/menu.mcfunction` - Editor actionbar menu
- `editor/give_tools.mcfunction` - Editor tools with localized lore

### Localization System / Система локализации
- `localization/init.mcfunction` - Localization initialization
- `localization/set_russian.mcfunction` - Switch to Russian
- `localization/set_english.mcfunction` - Switch to English
- `localization/prompt.mcfunction` - Language selection prompt
