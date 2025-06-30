execute unless score @s repo.distance_offset matches -30..10 run scoreboard players set @s repo.distance_offset 0
scoreboard players set @s repo.temp2 40
scoreboard players operation @s repo.temp2 += @s repo.distance_offset
execute if score @s repo.temp2 matches 60.. run return 0

scoreboard players add @s repo.distance_offset 6
execute if score @s repo.distance_offset matches 11.. run scoreboard players set @s repo.distance_offset 10
