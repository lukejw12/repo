
tag @s add repo.holding

execute as @e[tag=repo.target_object] run tag @s add repo.held_by

execute store result score @e[tag=repo.target_object] repo.holder run data get entity @s UUID[0]

execute as @e[tag=repo.target_object] run data modify entity @s NoGravity set value 1b
execute as @e[tag=repo.target_object] run data modify entity @s Invulnerable set value 1b
