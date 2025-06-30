scoreboard players set @s repo.is_holding_this 0
execute store result score @s repo.temp run data get entity @s UUID[0]
execute as @e[tag=repo.target_object,limit=1] if score @s repo.holder = @p repo.temp run scoreboard players set @p repo.is_holding_this 1

execute if score @s repo.is_holding_this matches 1 run scoreboard players operation @e[tag=repo.target_object,limit=1] repo.combined_strength += @s repo.strength
execute if score @s repo.is_holding_this matches 1 run scoreboard players add @e[tag=repo.target_object,limit=1] repo.holder_count 1