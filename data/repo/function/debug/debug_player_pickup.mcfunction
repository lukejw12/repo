
tellraw @s [{"text":"Player strength: "},{"score":{"name":"@s","objective":"repo.strength"},"color":"white"}]
execute if entity @s[tag=!repo.holding] run tellraw @s [{"text":"Player not holding anything - proceeding","color":"green"}]
execute if entity @s[tag=repo.holding] run tellraw @s [{"text":"Player already holding something","color":"red"}]
execute if entity @s[tag=!repo.holding] run function repo:pickup/check_strength
execute if entity @s[tag=repo.holding] run function repo:pickup/already_holding