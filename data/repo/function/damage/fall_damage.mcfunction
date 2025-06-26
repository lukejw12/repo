scoreboard players set @s repo.temp 0

execute if score @s repo.fall_distance matches 3.. run function repo:damage/calculate_fall_damage
execute if score @s repo.temp matches 1.. run function repo:damage/apply_damage

scoreboard players set @s repo.fall_distance 0