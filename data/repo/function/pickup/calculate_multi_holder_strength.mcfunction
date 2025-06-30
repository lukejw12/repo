execute if entity @s[tag=!repo.held_by] run function repo:pickup/calculate_fresh_pickup
execute if entity @s[tag=repo.held_by] run function repo:pickup/calculate_additional_holder

scoreboard players operation @p repo.temp = @s repo.combined_strength
scoreboard players operation @p repo.temp2 = @s repo.weight