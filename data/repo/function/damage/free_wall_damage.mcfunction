
scoreboard players set @s repo.temp 2
execute if score @s repo.wall_velocity matches 200.. run scoreboard players set @s repo.temp 4
execute if score @s repo.wall_velocity matches 400.. run scoreboard players set @s repo.temp 6
execute if score @s repo.wall_velocity matches 600.. run scoreboard players set @s repo.temp 8

scoreboard players set @s repo.damage_cooldown 20
function repo:damage/apply_damage