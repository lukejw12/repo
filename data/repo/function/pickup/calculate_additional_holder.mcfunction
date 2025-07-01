scoreboard players operation @s repo.combined_strength += @p repo.strength

execute if score @s repo.holder_count matches 0 run scoreboard players operation @s repo.holder = @p repo.temp
execute if score @s repo.holder_count matches 1 run scoreboard players operation @s repo.holder_2 = @p repo.temp
execute if score @s repo.holder_count matches 2 run scoreboard players operation @s repo.holder_3 = @p repo.temp
execute if score @s repo.holder_count matches 3 run scoreboard players operation @s repo.holder_4 = @p repo.temp

scoreboard players add @s repo.holder_count 1