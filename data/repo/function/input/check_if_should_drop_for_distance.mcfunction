execute store result score @s repo.temp run data get entity @s UUID[0]
execute as @e[tag=repo.held_by,limit=1,sort=nearest] run function repo:input/drop_if_too_far_check

execute if score @s repo.temp matches 1 if entity @s[tag=repo.holding] run function repo:input/drop_object