
execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute if score @s repo.temp2 = @e[tag=repo.current_object,limit=1] repo.temp at @s run function repo:movement/calculate_target_position