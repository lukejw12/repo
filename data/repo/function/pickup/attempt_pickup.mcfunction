tag @s add repo.temp_target

execute as @p if entity @s[tag=!repo.holding] run function repo:pickup/check_strength
execute as @p if entity @s[tag=repo.holding] run function repo:pickup/already_holding

tag @e remove repo.temp_target