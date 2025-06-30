tellraw @a [{"text":"DEBUG: In check_if_multi_holder, current entity: "},{"selector":"@s"}]
execute store result score @s repo.temp2 run data get entity @s UUID[0]
tellraw @a [{"text":"DEBUG: Current entity UUID: "},{"score":{"name":"@s","objective":"repo.temp2"},"color":"white"}]

tag @s add repo.current_player
execute as @e[tag=repo.current_object,limit=1] at @s run function repo:movement/add_to_center_if_holder_fixed
tag @s remove repo.current_player