
scoreboard players set @s repo.temp 2
execute if score @s repo.velocity_y matches ..-200 run scoreboard players set @s repo.temp 3
execute if score @s repo.velocity_y matches ..-300 run scoreboard players set @s repo.temp 4
execute if score @s repo.velocity_y matches ..-400 run scoreboard players set @s repo.temp 5

function repo:damage/apply_damage