execute store result score @s repo.temp run scoreboard players get @s repo.holder
execute as @a store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @a if score @s repo.temp2 = @e[tag=repo.object,limit=1,sort=nearest] repo.holder run scoreboard players operation @e[tag=repo.object,limit=1,sort=nearest] repo.player_strength = @s repo.strength

scoreboard players operation @s repo.temp = @s repo.player_strength
scoreboard players operation @s repo.temp *= #100 repo.temp
scoreboard players operation @s repo.temp /= @s repo.weight

execute if score @s repo.temp matches 400.. run scoreboard players set @s repo.speed_multiplier 200
execute if score @s repo.temp matches 300..399 run scoreboard players set @s repo.speed_multiplier 180
execute if score @s repo.temp matches 250..299 run scoreboard players set @s repo.speed_multiplier 160
execute if score @s repo.temp matches 200..249 run scoreboard players set @s repo.speed_multiplier 140
execute if score @s repo.temp matches 150..199 run scoreboard players set @s repo.speed_multiplier 120
execute if score @s repo.temp matches 125..149 run scoreboard players set @s repo.speed_multiplier 100
execute if score @s repo.temp matches 110..124 run scoreboard players set @s repo.speed_multiplier 80
execute if score @s repo.temp matches 105..109 run scoreboard players set @s repo.speed_multiplier 60
execute if score @s repo.temp matches 102..104 run scoreboard players set @s repo.speed_multiplier 40
execute if score @s repo.temp matches 100..101 run scoreboard players set @s repo.speed_multiplier 20
execute if score @s repo.temp matches ..99 run scoreboard players set @s repo.speed_multiplier 5

function repo:movement/calculate_motion