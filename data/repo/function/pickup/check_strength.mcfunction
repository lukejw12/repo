execute as @e[tag=repo.temp_target,limit=1] run tag @s add repo.target_object

execute as @e[tag=repo.target_object,limit=1] run function repo:pickup/calculate_multi_holder_strength

execute if score @s repo.temp >= @s repo.temp2 run tag @s add repo.pickup_success
execute if score @s repo.temp < @s repo.temp2 run tag @s add repo.pickup_fail

execute if entity @s[tag=repo.pickup_success] run function repo:pickup/successful_pickup
execute if entity @s[tag=repo.pickup_fail] run function repo:pickup/failed_pickup

tag @s remove repo.pickup_success
tag @s remove repo.pickup_fail

scoreboard players set @s repo.raycast_success 1

tag @e remove repo.target_object