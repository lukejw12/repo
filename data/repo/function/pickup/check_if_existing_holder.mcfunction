execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @e[tag=repo.target_object,limit=1] run function repo:pickup/add_strength_if_holder