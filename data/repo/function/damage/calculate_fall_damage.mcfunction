
scoreboard players operation @s repo.temp += @s repo.fragile_percentage
scoreboard players operation @s repo.fall_distance -= #3 repo.temp
scoreboard players operation @s repo.fall_distance /= #5 repo.temp
execute if score @s repo.fall_distance matches 1.. run function repo:damage/add_extra_damage