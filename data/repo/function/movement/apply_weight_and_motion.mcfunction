tellraw @a [{"text":"DEBUG: ===== APPLYING WEIGHT AND MOTION =====","color":"red"}]
tellraw @a [{"text":"DEBUG: Object position: "},{"nbt":"Pos","entity":"@s"}]
tellraw @a [{"text":"DEBUG: Target position: "},{"score":{"name":"@s","objective":"repo.target_x"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.target_y"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.target_z"},"color":"white"}]

execute store result score @s repo.temp run scoreboard players get @s repo.holder
execute as @a store result score @s repo.temp2 run data get entity @s UUID[0]
execute as @a if score @s repo.temp2 = @e[tag=repo.object,limit=1,sort=nearest] repo.holder run scoreboard players operation @e[tag=repo.object,limit=1,sort=nearest] repo.player_strength = @s repo.strength

tellraw @a [{"text":"DEBUG: Player strength: "},{"score":{"name":"@s","objective":"repo.player_strength"},"color":"white"}]
tellraw @a [{"text":"DEBUG: Object weight: "},{"score":{"name":"@s","objective":"repo.weight"},"color":"white"}]

scoreboard players operation @s repo.temp = @s repo.player_strength
scoreboard players operation @s repo.temp *= #100 repo.temp
scoreboard players operation @s repo.temp /= @s repo.weight

tellraw @a [{"text":"DEBUG: Strength/weight ratio: "},{"score":{"name":"@s","objective":"repo.temp"},"color":"white"}]

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

tellraw @a [{"text":"DEBUG: Speed multiplier: "},{"score":{"name":"@s","objective":"repo.speed_multiplier"},"color":"white"}]

function repo:movement/calculate_motion
tellraw @a [{"text":"DEBUG: ===== END WEIGHT AND MOTION =====","color":"red"}]