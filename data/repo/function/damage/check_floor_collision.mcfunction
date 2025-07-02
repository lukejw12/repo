scoreboard players set @s repo.floor_found 0

execute at @s unless block ~ ~-0.5 ~ #repo:passable run scoreboard players set @s repo.floor_found 1



execute if score @s repo.floor_found matches 1 run function repo:damage/held_floor_damage
