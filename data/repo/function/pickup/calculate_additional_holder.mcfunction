execute store result score @p repo.temp run data get entity @p UUID[0]
scoreboard players set @p repo.temp2 0

execute if score @s repo.holder = @p repo.temp run scoreboard players set @p repo.temp2 1
execute if score @s repo.holder_2 = @p repo.temp run scoreboard players set @p repo.temp2 1
execute if score @s repo.holder_3 = @p repo.temp run scoreboard players set @p repo.temp2 1
execute if score @s repo.holder_4 = @p repo.temp run scoreboard players set @p repo.temp2 1

execute if score @p repo.temp2 matches 0 run scoreboard players operation @s repo.combined_strength += @p repo.strength