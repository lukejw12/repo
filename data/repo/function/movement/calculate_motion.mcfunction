execute store result score @s repo.pos_x run data get entity @s Pos[0] 1000
execute store result score @s repo.pos_y run data get entity @s Pos[1] 1000
execute store result score @s repo.pos_z run data get entity @s Pos[2] 1000

tellraw @a [{"text":"DEBUG: Calculating motion values","color":"dark_purple"}]
tellraw @a [{"text":"DEBUG: Fresh position read: "},{"score":{"name":"@s","objective":"repo.pos_x"},"color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"repo.pos_y"},"color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"repo.pos_z"},"color":"aqua"}]
tellraw @a [{"text":"DEBUG: Target position: "},{"score":{"name":"@s","objective":"repo.target_x"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.target_y"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.target_z"},"color":"white"}]

scoreboard players operation @s repo.motion_x = @s repo.target_x
scoreboard players operation @s repo.motion_x -= @s repo.pos_x

scoreboard players operation @s repo.motion_y = @s repo.target_y
scoreboard players operation @s repo.motion_y -= @s repo.pos_y

scoreboard players operation @s repo.motion_z = @s repo.target_z
scoreboard players operation @s repo.motion_z -= @s repo.pos_z

tellraw @a [{"text":"DEBUG: Raw motion: "},{"score":{"name":"@s","objective":"repo.motion_x"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.motion_y"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.motion_z"},"color":"white"}]

scoreboard players operation @s repo.motion_x *= @s repo.speed_multiplier
scoreboard players operation @s repo.motion_y *= @s repo.speed_multiplier
scoreboard players operation @s repo.motion_z *= @s repo.speed_multiplier

scoreboard players operation @s repo.motion_x /= #1000 repo.temp
scoreboard players operation @s repo.motion_y /= #1000 repo.temp
scoreboard players operation @s repo.motion_z /= #1000 repo.temp

tellraw @a [{"text":"DEBUG: Final motion: "},{"score":{"name":"@s","objective":"repo.motion_x"},"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"repo.motion_y"},"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"repo.motion_z"},"color":"green"}]

function repo:movement/apply_motion