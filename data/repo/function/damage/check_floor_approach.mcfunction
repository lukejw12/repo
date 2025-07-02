scoreboard players set @s repo.near_ground 0
execute at @s unless block ~ ~-0.5 ~ #repo:passable run scoreboard players set @s repo.near_ground 1

execute if score @s repo.near_ground matches 1 if score @s repo.velocity_y matches ..-150 run tag @s add repo.falling_fast
execute unless score @s repo.near_ground matches 1 run tag @s remove repo.falling_fast

execute if entity @s[tag=repo.falling_fast] if entity @s[nbt={OnGround:1b}] unless entity @s[tag=repo.just_landed] run function repo:damage/floor_impact
execute if entity @s[nbt={OnGround:1b}] run tag @s add repo.just_landed
execute unless entity @s[nbt={OnGround:1b}] run tag @s remove repo.just_landed