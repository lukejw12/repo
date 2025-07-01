execute store result score @s repo.object_x run data get entity @s Pos[0] 1000
execute store result score @s repo.object_y run data get entity @s Pos[1] 1000
execute store result score @s repo.object_z run data get entity @s Pos[2] 1000

scoreboard players operation @s repo.diff_x = @s repo.object_x
scoreboard players operation @s repo.diff_x -= @p repo.current_x

scoreboard players operation @s repo.diff_y = @s repo.object_y
scoreboard players operation @s repo.diff_y -= @p repo.current_y

scoreboard players operation @s repo.diff_z = @s repo.object_z
scoreboard players operation @s repo.diff_z -= @p repo.current_z

scoreboard players operation @s repo.curve_factor = @p repo.raycast_steps
scoreboard players operation @s repo.curve_factor *= @s repo.curve_factor
scoreboard players operation @s repo.curve_factor /= #3600 repo.temp

scoreboard players operation @s repo.offset_x = @s repo.diff_x
scoreboard players operation @s repo.offset_x *= @s repo.curve_factor
scoreboard players operation @s repo.offset_x /= #100 repo.temp

scoreboard players operation @s repo.offset_y = @s repo.diff_y
scoreboard players operation @s repo.offset_y *= @s repo.curve_factor
scoreboard players operation @s repo.offset_y /= #100 repo.temp

scoreboard players operation @s repo.offset_z = @s repo.diff_z
scoreboard players operation @s repo.offset_z *= @s repo.curve_factor
scoreboard players operation @s repo.offset_z /= #100 repo.temp

scoreboard players operation @p repo.curve_x = @p repo.current_x
scoreboard players operation @p repo.curve_x += @s repo.offset_x

scoreboard players operation @p repo.curve_y = @p repo.current_y
scoreboard players operation @p repo.curve_y += @s repo.offset_y

scoreboard players operation @p repo.curve_z = @p repo.current_z
scoreboard players operation @p repo.curve_z += @s repo.offset_z