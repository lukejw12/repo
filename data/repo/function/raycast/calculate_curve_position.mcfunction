execute store result score @s repo.item_x run data get entity @s Pos[0] 1000
execute store result score @s repo.item_y run data get entity @s Pos[1] 1000
execute store result score @s repo.item_z run data get entity @s Pos[2] 1000

scoreboard players operation @s repo.progress = @p repo.raycast_steps
scoreboard players operation @s repo.progress *= #100 repo.temp
scoreboard players operation @s repo.progress /= #40 repo.temp

scoreboard players set @s repo.reverse_progress 100
scoreboard players operation @s repo.reverse_progress -= @s repo.progress

scoreboard players operation @s repo.lerp_x = @p repo.player_x
scoreboard players operation @s repo.lerp_x *= @s repo.reverse_progress
scoreboard players operation @s repo.temp_x = @s repo.item_x
scoreboard players operation @s repo.temp_x *= @s repo.progress
scoreboard players operation @s repo.lerp_x += @s repo.temp_x
scoreboard players operation @s repo.lerp_x /= #100 repo.temp

scoreboard players operation @s repo.lerp_y = @p repo.player_y
scoreboard players operation @s repo.lerp_y *= @s repo.reverse_progress
scoreboard players operation @s repo.temp_y = @s repo.item_y
scoreboard players operation @s repo.temp_y *= @s repo.progress
scoreboard players operation @s repo.lerp_y += @s repo.temp_y
scoreboard players operation @s repo.lerp_y /= #100 repo.temp

scoreboard players operation @s repo.lerp_z = @p repo.player_z
scoreboard players operation @s repo.lerp_z *= @s repo.reverse_progress
scoreboard players operation @s repo.temp_z = @s repo.item_z
scoreboard players operation @s repo.temp_z *= @s repo.progress
scoreboard players operation @s repo.lerp_z += @s repo.temp_z
scoreboard players operation @s repo.lerp_z /= #100 repo.temp

execute store result storage repo:curve x double 0.001 run scoreboard players get @s repo.lerp_x
execute store result storage repo:curve y double 0.001 run scoreboard players get @s repo.lerp_y
execute store result storage repo:curve z double 0.001 run scoreboard players get @s repo.lerp_z