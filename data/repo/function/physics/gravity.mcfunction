
execute unless entity @s[nbt={OnGround:1b}] run data modify entity @s Motion[1] set value -0.38d

execute unless entity @s[nbt={OnGround:1b}] store result score @s repo.fall_distance run data get entity @s fall_distance 10


execute if entity @s[nbt={OnGround:1b}] unless score @s repo.was_on_ground matches 1 if score @s repo.fall_distance matches 1.. run function repo:damage/fall_damage

execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s repo.was_on_ground 1
execute unless entity @s[nbt={OnGround:1b}] run scoreboard players set @s repo.was_on_ground 0