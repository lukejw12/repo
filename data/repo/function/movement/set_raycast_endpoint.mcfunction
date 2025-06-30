execute store result score @s repo.endpoint_x run data get entity @s Pos[0] 1000
execute store result score @s repo.endpoint_y run data get entity @s Pos[1] 1000
execute store result score @s repo.endpoint_z run data get entity @s Pos[2] 1000

tellraw @s [{"text":"DEBUG: Player raycast hit at: "},{"score":{"name":"@s","objective":"repo.endpoint_x"},"color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"repo.endpoint_y"},"color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"repo.endpoint_z"},"color":"aqua"}]