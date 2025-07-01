execute store result score @s repo.temp2 run data get entity @s UUID[0]

tag @s add repo.current_player

scoreboard players set @s repo.is_holder 0
execute as @e[tag=repo.current_object,limit=1] run function repo:movement/check_if_player_matches_any_holder

execute if score @s repo.is_holder matches 1 at @s run function repo:movement/add_player_to_center_simple

tag @s remove repo.current_player