
execute store result score @s repo.temp run scoreboard players get @s repo.holder
execute store result score @p repo.temp2 run data get entity @p UUID[0]

execute if score @s repo.temp = @p repo.temp2 run scoreboard players set @p repo.raycast_success 1
