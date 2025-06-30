particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 5 force @a
playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.5 1.5
execute store result score @s repo.temp2 run scoreboard players get @s repo.holder
execute as @a store result score @s repo.temp3 run data get entity @s UUID[0]
execute as @a if score @s repo.temp3 = @e[tag=repo.object,limit=1,sort=nearest] repo.holder run function repo:input/drop_extracted_object

kill @s