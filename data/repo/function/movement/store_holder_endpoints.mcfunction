execute store result score @s repo.temp2 run data get entity @s UUID[0]
tag @s add repo.current_player

execute as @e[tag=repo.current_object,limit=1] run function repo:movement/check_if_player_is_holder

tag @s remove repo.current_player