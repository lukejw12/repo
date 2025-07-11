execute store result score @s repo.item_x run data get entity @s Pos[0] 1000
execute store result score @s repo.item_y run data get entity @s Pos[1] 1000
execute store result score @s repo.item_z run data get entity @s Pos[2] 1000

scoreboard players operation @s repo.curve_progress = @p repo.raycast_steps
scoreboard players remove @s repo.curve_progress 10
scoreboard players operation @s repo.curve_progress *= #100 repo.temp
scoreboard players operation @s repo.curve_progress /= #30 repo.temp

scoreboard players set @s repo.curve_inv 100
scoreboard players operation @s repo.curve_inv -= @s repo.curve_progress

scoreboard players operation @s repo.final_x = @p repo.curve_start_x
scoreboard players operation @s repo.final_x *= @s repo.curve_inv
scoreboard players operation @s repo.temp_item_x = @s repo.item_x
scoreboard players operation @s repo.temp_item_x *= @s repo.curve_progress
scoreboard players operation @s repo.final_x += @s repo.temp_item_x
scoreboard players operation @s repo.final_x /= #100 repo.temp

scoreboard players operation @s repo.final_y = @p repo.curve_start_y
scoreboard players operation @s repo.final_y *= @s repo.curve_inv
scoreboard players operation @s repo.temp_item_y = @s repo.item_y
scoreboard players operation @s repo.temp_item_y *= @s repo.curve_progress
scoreboard players operation @s repo.final_y += @s repo.temp_item_y
scoreboard players operation @s repo.final_y /= #100 repo.temp

scoreboard players operation @s repo.final_z = @p repo.curve_start_z
scoreboard players operation @s repo.final_z *= @s repo.curve_inv
scoreboard players operation @s repo.temp_item_z = @s repo.item_z
scoreboard players operation @s repo.temp_item_z *= @s repo.curve_progress
scoreboard players operation @s repo.final_z += @s repo.temp_item_z
scoreboard players operation @s repo.final_z /= #100 repo.temp

execute store result storage repo:curve x double 0.001 run scoreboard players get @s repo.final_x
execute store result storage repo:curve y double 0.001 run scoreboard players get @s repo.final_y
execute store result storage repo:curve z double 0.001 run scoreboard players get @s repo.final_z