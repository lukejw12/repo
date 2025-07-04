execute store result score @s repo.temp_x run data get entity @s Pos[0] 1000
execute store result score @s repo.temp_z run data get entity @s Pos[2] 1000

scoreboard players set @s repo.is_moving 0
execute unless score @s repo.temp_x = @s repo.prev_x run scoreboard players set @s repo.is_moving 1
execute unless score @s repo.temp_z = @s repo.prev_z run scoreboard players set @s repo.is_moving 1

scoreboard players operation @s repo.prev_x = @s repo.temp_x
scoreboard players operation @s repo.prev_z = @s repo.temp_z