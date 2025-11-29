# Добавление символа к подстроке через макрос

$data modify storage npcs:temp temp_char set from storage npcs:temp current_line.chars[$(index)]
$data modify storage npcs:temp substring set value '$(substring)$(temp_char)'
