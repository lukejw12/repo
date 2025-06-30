tag @s remove repo.holding
execute store result score @s repo.temp run data get entity @s UUID[0]
execute as @e[tag=repo.held_by] run function repo:input/check_and_remove_holder