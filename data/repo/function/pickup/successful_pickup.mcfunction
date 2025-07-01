tag @s add repo.holding

execute as @e[tag=repo.target_object] run tag @s add repo.held_by
execute as @e[tag=repo.target_object] run data modify entity @s Glowing set value 1b
execute as @e[tag=repo.target_object] run data modify entity @s NoGravity set value 1b
execute as @e[tag=repo.target_object] run data modify entity @s Invulnerable set value 1b

execute store result score @s repo.temp run data get entity @s UUID[0]
execute as @e[tag=repo.target_object,limit=1] run function repo:pickup/add_holder
