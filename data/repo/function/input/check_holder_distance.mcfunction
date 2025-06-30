execute store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @e[tag=repo.held_by,limit=1,sort=nearest] run function repo:input/check_if_holder_too_far