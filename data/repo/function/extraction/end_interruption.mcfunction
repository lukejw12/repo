tag @s remove repo.quota_interrupted
scoreboard players reset @s repo.surplus_timer
execute store result storage repo:temp value_amount int 1 run scoreboard players get @s repo.collected_value
function repo:extraction/set_value_display_text with storage repo:temp