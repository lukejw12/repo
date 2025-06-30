execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @e[tag=repo.current_object,limit=1] run function repo:movement/check_if_holder_for_offset