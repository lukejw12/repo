
execute store result score @s repo.pos_x run data get entity @s Pos[0] 1000
execute store result score @s repo.pos_y run data get entity @s Pos[1] 1000
execute store result score @s repo.pos_z run data get entity @s Pos[2] 1000

scoreboard players set @s repo.center_x 0
scoreboard players set @s repo.center_y 0
scoreboard players set @s repo.center_z 0
scoreboard players set @s repo.temp 0

execute as @a run function repo:movement/check_if_multi_holder

execute if score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_x /= @s repo.temp
execute if score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_y /= @s repo.temp
execute if score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_z /= @s repo.temp

execute unless score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_x = @s repo.pos_x
execute unless score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_y = @s repo.pos_y
execute unless score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_z = @s repo.pos_z


scoreboard players operation @s repo.target_x = @s repo.center_x
scoreboard players operation @s repo.target_y = @s repo.center_y
scoreboard players operation @s repo.target_z = @s repo.center_z

function repo:movement/apply_weight_and_motion
