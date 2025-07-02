scoreboard players set @s repo.temp 0

execute if score @s repo.total_velocity matches 200..399 run scoreboard players operation @s repo.temp = @s repo.fragile_percentage
execute if score @s repo.total_velocity matches 200..399 run scoreboard players operation @s repo.temp /= #200 repo.temp

execute if score @s repo.total_velocity matches 400..599 run scoreboard players operation @s repo.temp = @s repo.fragile_percentage
execute if score @s repo.total_velocity matches 400..599 run scoreboard players operation @s repo.temp /= #100 repo.temp

execute if score @s repo.total_velocity matches 600.. run scoreboard players operation @s repo.temp = @s repo.fragile_percentage
execute if score @s repo.total_velocity matches 600.. run scoreboard players operation @s repo.temp /= #50 repo.temp

execute if score @s repo.temp matches 1.. run function repo:damage/apply_damage
execute unless score @s repo.temp matches 1.. run function repo:damage/wall_damage

