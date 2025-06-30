execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute store result score @s repo.temp3 run scoreboard players get @e[tag=repo.current_object,limit=1] repo.temp
execute if score @s repo.temp2 = @s repo.temp3 at @s run function repo:movement/calculate_target_position_with_offset