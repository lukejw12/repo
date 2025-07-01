execute store result score @s repo.temp run scoreboard players get @p repo.temp

execute if score @s repo.holder_count matches 0 run scoreboard players operation @s repo.holder = @s repo.temp
execute if score @s repo.holder_count matches 1 run scoreboard players operation @s repo.holder_2 = @s repo.temp
execute if score @s repo.holder_count matches 2 run scoreboard players operation @s repo.holder_3 = @s repo.temp
execute if score @s repo.holder_count matches 3 run scoreboard players operation @s repo.holder_4 = @s repo.temp

scoreboard players add @s repo.holder_count 1

execute if score @s repo.holder_count matches 1 run scoreboard players operation @s repo.combined_strength = @p repo.strength
execute if score @s repo.holder_count matches 2.. run scoreboard players operation @s repo.combined_strength += @p repo.strength