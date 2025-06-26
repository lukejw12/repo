

execute as @e[tag=repo.temp_target,limit=1] run tag @s add repo.target_object


scoreboard players operation @s repo.temp = @s repo.strength
execute as @e[tag=repo.target_object,limit=1] run scoreboard players operation @p repo.temp2 = @s repo.weight

execute if score @s repo.temp >= @s repo.temp2 run function repo:pickup/successful_pickup
execute if score @s repo.temp < @s repo.temp2 run function repo:pickup/failed_pickup

scoreboard players set @s repo.raycast_success 1

tag @e remove repo.target_object