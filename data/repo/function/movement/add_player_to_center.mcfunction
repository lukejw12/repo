tellraw @p [{"text":"DEBUG: Adding player to center","color":"green"}]
tellraw @p [{"text":"DEBUG: Player pos: "},{"nbt":"Pos","entity":"@s"}]

execute store result score @s repo.temp4 run data get entity @p Pos[0] 1000
scoreboard players operation @s repo.center_x += @s repo.temp4
tellraw @p [{"text":"DEBUG: Added X: "},{"score":{"name":"@s","objective":"repo.temp4"},"color":"white"}]

execute store result score @s repo.temp4 run data get entity @p Pos[1] 1000
scoreboard players operation @s repo.center_y += @s repo.temp4
tellraw @p [{"text":"DEBUG: Added Y: "},{"score":{"name":"@s","objective":"repo.temp4"},"color":"white"}]

execute store result score @s repo.temp4 run data get entity @p Pos[2] 1000
scoreboard players operation @s repo.center_z += @s repo.temp4
tellraw @p [{"text":"DEBUG: Added Z: "},{"score":{"name":"@s","objective":"repo.temp4"},"color":"white"}]

scoreboard players add @s repo.temp 1
tellraw @p [{"text":"DEBUG: Holder count now: "},{"score":{"name":"@s","objective":"repo.temp"},"color":"white"}]