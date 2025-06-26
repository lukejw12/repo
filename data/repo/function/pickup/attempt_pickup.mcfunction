tag @s add repo.temp_target

execute as @p[tag=repo.temp_target] if entity @s[tag=!repo.holding] run function repo:pickup/check_strength
execute as @p[tag=repo.temp_target] if entity @s[tag=repo.holding] run function repo:pickup/already_holding

tag @a remove repo.temp_target