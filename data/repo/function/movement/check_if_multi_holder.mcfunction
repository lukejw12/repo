execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @e[tag=repo.current_object,limit=1] at @s run function repo:movement/add_to_center_if_holder