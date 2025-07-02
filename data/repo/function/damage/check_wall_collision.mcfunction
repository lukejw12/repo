scoreboard players set @s repo.near_wall 0
execute at @s unless block ~1 ~ ~ #repo:passable run scoreboard players set @s repo.near_wall 1
execute at @s unless block ~-1 ~ ~ #repo:passable run scoreboard players set @s repo.near_wall 1
execute at @s unless block ~ ~ ~1 #repo:passable run scoreboard players set @s repo.near_wall 1
execute at @s unless block ~ ~ ~-1 #repo:passable run scoreboard players set @s repo.near_wall 1

execute if score @s repo.near_wall matches 1 if score @s repo.total_velocity matches 200.. run tag @s add repo.moving_fast_near_wall
execute unless score @s repo.near_wall matches 1 run tag @s remove repo.moving_fast_near_wall

execute if entity @s[tag=repo.moving_fast_near_wall] if score @s repo.velocity_drop matches 150.. run function repo:damage/wall_impact