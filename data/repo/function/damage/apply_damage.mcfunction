

scoreboard players operation @s repo.temp2 = @s repo.temp
scoreboard players operation @s repo.temp2 *= @s repo.current_value
scoreboard players operation @s repo.temp2 /= #100 repo.temp


scoreboard players operation @s repo.current_value -= @s repo.temp2


execute if score @s repo.current_value matches ..0 run scoreboard players set @s repo.current_value 0

function repo:damage/show_damage_display