execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute if score @s repo.temp2 = @s repo.temp run function repo:movement/calculate_follow_position