
scoreboard players set @s repo.temp 2
execute if score @s repo.total_velocity matches 400.. run scoreboard players set @s repo.temp 3
execute if score @s repo.total_velocity matches 600.. run scoreboard players set @s repo.temp 4
execute if score @s repo.total_velocity matches 800.. run scoreboard players set @s repo.temp 5

scoreboard players set @s repo.damage_cooldown 10
function repo:damage/apply_damage