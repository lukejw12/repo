
execute if score @s repo.weight matches ..2 run scoreboard players set @s repo.speed_multiplier 150
execute if score @s repo.weight matches 3..5 run scoreboard players set @s repo.speed_multiplier 110
execute if score @s repo.weight matches 6..10 run scoreboard players set @s repo.speed_multiplier 70
execute if score @s repo.weight matches 11..15 run scoreboard players set @s repo.speed_multiplier 30
execute if score @s repo.weight matches 16..20 run scoreboard players set @s repo.speed_multiplier 20
execute if score @s repo.weight matches 21.. run scoreboard players set @s repo.speed_multiplier 10

function repo:movement/calculate_motion