scoreboard players set @s repo.is_actually_sprinting 0

execute if score @s repo.is_sprinting matches 1.. run scoreboard players set @s repo.is_actually_sprinting 1
execute if data entity @s {abilities:{mayfly:0b}} if data entity @s {OnGround:0b} if score @s repo.is_moving matches 1 run scoreboard players set @s repo.is_actually_sprinting 1

execute if data entity @s {abilities:{flying:1b}} run scoreboard players set @s repo.is_actually_sprinting 0