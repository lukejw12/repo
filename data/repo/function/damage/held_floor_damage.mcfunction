
scoreboard players set @s repo.temp 1
execute if score @s repo.velocity_drop_y matches 100.. run scoreboard players set @s repo.temp 2
execute if score @s repo.velocity_drop_y matches 200.. run scoreboard players set @s repo.temp 3
execute if score @s repo.velocity_drop_y matches 300.. run scoreboard players set @s repo.temp 4

function repo:damage/apply_damage