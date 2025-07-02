execute store result score @s repo.temp run data get entity @s UUID[0]

tag @s add repo.current_scroller
execute as @e[tag=repo.held_by] run function repo:input/check_if_my_object_push
tag @s remove repo.current_scroller