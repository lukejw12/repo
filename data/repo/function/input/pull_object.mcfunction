execute unless score @s repo.distance_offset matches -40..15 run scoreboard players set @s repo.distance_offset 0

scoreboard players set @s repo.temp 40
scoreboard players operation @s repo.temp += @s repo.distance_offset

execute if score @s repo.temp matches ..5 run return 0

scoreboard players remove @s repo.distance_offset 5

execute if score @s repo.distance_offset matches ..-36 run scoreboard players set @s repo.distance_offset -35

