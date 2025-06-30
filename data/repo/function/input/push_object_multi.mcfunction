tellraw @s [{"text":"DEBUG: In push_object_multi","color":"gold"}]
execute store result score @s repo.temp run data get entity @s UUID[0]
tellraw @s [{"text":"DEBUG: Player UUID: "},{"score":{"name":"@s","objective":"repo.temp"},"color":"white"}]
execute as @e[tag=repo.held_by] run tellraw @p [{"text":"DEBUG: Found held object, checking if mine","color":"gold"}]
execute as @e[tag=repo.held_by] run function repo:input/check_if_my_object_push