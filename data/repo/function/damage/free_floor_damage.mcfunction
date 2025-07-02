
scoreboard players set @s repo.temp 2
execute if score @s repo.velocity_y matches 100.. run scoreboard players set @s repo.temp 4
execute if score @s repo.velocity_y matches 200.. run scoreboard players set @s repo.temp 6
execute if score @s repo.velocity_y matches 300.. run scoreboard players set @s repo.temp 8

scoreboard players set @s repo.damage_cooldown 20
function repo:damage/apply_damage