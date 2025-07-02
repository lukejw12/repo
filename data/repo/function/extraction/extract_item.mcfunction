
execute store result score @s repo.temp run scoreboard players get @s repo.current_value
execute as @e[tag=repo.extraction_zone,limit=1,sort=nearest] run scoreboard players operation @s repo.collected_value += @e[tag=repo.object,limit=1,sort=nearest] repo.temp

particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 5 force @a
playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.5 1.5


execute store result score @s repo.temp2 run scoreboard players get @s repo.holder
execute as @a store result score @s repo.temp3 run data get entity @s UUID[0]
execute as @a if score @s repo.temp3 = @e[tag=repo.object,limit=1,sort=nearest] repo.holder run function repo:input/drop_extracted_object

kill @s