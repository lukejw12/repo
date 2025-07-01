execute store result score @p repo.temp run data get entity @p UUID[0]

scoreboard players set @p repo.already_holding 0
execute if score @s repo.holder = @p repo.temp run scoreboard players set @p repo.already_holding 1
execute if score @s repo.holder_2 = @p repo.temp run scoreboard players set @p repo.already_holding 1
execute if score @s repo.holder_3 = @p repo.temp run scoreboard players set @p repo.already_holding 1
execute if score @s repo.holder_4 = @p repo.temp run scoreboard players set @p repo.already_holding 1

execute if score @p repo.already_holding matches 0 if entity @s[tag=!repo.held_by] run function repo:pickup/calculate_fresh_pickup
execute if score @p repo.already_holding matches 0 if entity @s[tag=repo.held_by] run function repo:pickup/calculate_additional_holder
execute if score @p repo.already_holding matches 1 run function repo:pickup/already_holding_this

scoreboard players operation @p repo.temp = @s repo.combined_strength
scoreboard players operation @p repo.temp2 = @s repo.weight