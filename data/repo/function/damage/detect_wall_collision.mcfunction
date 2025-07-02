execute store result score @s repo.velocity_x run data get entity @s Motion[0] 1000
execute store result score @s repo.velocity_z run data get entity @s Motion[2] 1000

execute if score @s repo.velocity_x matches ..-1 run scoreboard players operation @s repo.velocity_x *= #-1 repo.temp
execute if score @s repo.velocity_z matches ..-1 run scoreboard players operation @s repo.velocity_z *= #-1 repo.temp

scoreboard players operation @s repo.total_velocity = @s repo.velocity_x
scoreboard players operation @s repo.total_velocity += @s repo.velocity_z

execute unless score @s repo.prev_velocity matches -999999..999999 run scoreboard players operation @s repo.prev_velocity = @s repo.total_velocity

scoreboard players operation @s repo.velocity_drop = @s repo.prev_velocity
scoreboard players operation @s repo.velocity_drop -= @s repo.total_velocity

execute if score @s repo.velocity_drop matches 200.. if score @s repo.prev_velocity matches 100.. if score @s repo.total_velocity matches ..150 run function repo:damage/velocity_wall_damage

scoreboard players operation @s repo.prev_velocity = @s repo.total_velocity