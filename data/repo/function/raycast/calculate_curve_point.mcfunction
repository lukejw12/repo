execute store result score @s repo.item_x run data get entity @s Pos[0] 1000
execute store result score @s repo.item_y run data get entity @s Pos[1] 1000
execute store result score @s repo.item_z run data get entity @s Pos[2] 1000

scoreboard players operation @s repo.curve_t = @p repo.raycast_steps
scoreboard players remove @s repo.curve_t 10
scoreboard players operation @s repo.curve_t *= #100 repo.temp
scoreboard players operation @s repo.curve_t /= #30 repo.temp

scoreboard players set @s repo.curve_t_inv 100
scoreboard players operation @s repo.curve_t_inv -= @s repo.curve_t

scoreboard players operation @s repo.curve_pos_x = @p repo.straight_end_x
scoreboard players operation @s repo.curve_pos_x *= @s repo.curve_t_inv
scoreboard players operation @s repo.item_contrib_x = @s repo.item_x
scoreboard players operation @s repo.item_contrib_x *= @s repo.curve_t
scoreboard players operation @s repo.curve_pos_x += @s repo.item_contrib_x
scoreboard players operation @s repo.curve_pos_x /= #100 repo.temp

scoreboard players operation @s repo.curve_pos_y = @p repo.straight_end_y
scoreboard players operation @s repo.curve_pos_y *= @s repo.curve_t_inv
scoreboard players operation @s repo.item_contrib_y = @s repo.item_y
scoreboard players operation @s repo.item_contrib_y *= @s repo.curve_t
scoreboard players operation @s repo.curve_pos_y += @s repo.item_contrib_y
scoreboard players operation @s repo.curve_pos_y /= #100 repo.temp

scoreboard players operation @s repo.curve_pos_z = @p repo.straight_end_z
scoreboard players operation @s repo.curve_pos_z *= @s repo.curve_t_inv
scoreboard players operation @s repo.item_contrib_z = @s repo.item_z
scoreboard players operation @s repo.item_contrib_z *= @s repo.curve_t
scoreboard players operation @s repo.curve_pos_z += @s repo.item_contrib_z
scoreboard players operation @s repo.curve_pos_z /= #100 repo.temp

execute store result storage repo:curve x double 0.001 run scoreboard players get @s repo.curve_pos_x
execute store result storage repo:curve y double 0.001 run scoreboard players get @s repo.curve_pos_y
execute store result storage repo:curve z double 0.001 run scoreboard players get @s repo.curve_pos_z