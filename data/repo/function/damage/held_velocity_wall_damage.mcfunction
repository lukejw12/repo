
scoreboard players set @s repo.temp 1
execute if score @s repo.total_velocity matches 200.. run scoreboard players set @s repo.temp 2
execute if score @s repo.total_velocity matches 400.. run scoreboard players set @s repo.temp 3
execute if score @s repo.total_velocity matches 600.. run scoreboard players set @s repo.temp 4

function repo:damage/apply_damage