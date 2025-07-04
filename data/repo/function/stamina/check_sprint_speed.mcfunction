execute as @a run function repo:stamina/detect_sprinting

execute as @a[scores={repo.is_actually_sprinting=1}] if score @s repo.stamina matches 5.. run attribute @s minecraft:movement_speed base set 0.1
execute as @a[scores={repo.is_actually_sprinting=1}] if score @s repo.stamina matches ..4 run attribute @s minecraft:movement_speed base set 0.077
execute as @a[scores={repo.is_actually_sprinting=0}] run attribute @s minecraft:movement_speed base set 0.1

scoreboard players set @a repo.is_sprinting 0