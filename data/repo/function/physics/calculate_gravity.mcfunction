
execute store result score @s repo.temp run data get entity @s Motion[1] 1000

execute if score @s repo.weight matches ..2 run scoreboard players set @s repo.temp2 25
execute if score @s repo.weight matches 3..5 run scoreboard players set @s repo.temp2 35
execute if score @s repo.weight matches 6..10 run scoreboard players set @s repo.temp2 45
execute if score @s repo.weight matches 11..15 run scoreboard players set @s repo.temp2 55
execute if score @s repo.weight matches 16..20 run scoreboard players set @s repo.temp2 65
execute if score @s repo.weight matches 21.. run scoreboard players set @s repo.temp2 75

scoreboard players operation @s repo.temp -= @s repo.temp2

execute if score @s repo.weight matches ..5 if score @s repo.temp matches ..-400 run scoreboard players set @s repo.temp -800
execute if score @s repo.weight matches 6..15 if score @s repo.temp matches ..-600 run scoreboard players set @s repo.temp -1000
execute if score @s repo.weight matches 16.. if score @s repo.temp matches ..-800 run scoreboard players set @s repo.temp -1200

execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s repo.temp