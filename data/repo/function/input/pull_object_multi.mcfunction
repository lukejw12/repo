tellraw @s [{"text":"DEBUG: In pull_object_multi","color":"green"}]
execute store result score @s repo.temp run data get entity @s UUID[0]
tellraw @s [{"text":"DEBUG: Player UUID: "},{"score":{"name":"@s","objective":"repo.temp"},"color":"white"}]
execute as @e[tag=repo.held_by] run tellraw @p [{"text":"DEBUG: Found held object, checking if mine","color":"green"}]
execute as @e[tag=repo.held_by] run function repo:input/check_if_my_object_pull