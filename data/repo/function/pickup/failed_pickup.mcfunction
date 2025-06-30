execute as @e[tag=repo.target_object,limit=1] run scoreboard players operation @p repo.temp3 = @s repo.weight
execute as @e[tag=repo.target_object,limit=1] run data modify entity @s Glowing set value 0b
execute as @e[tag=repo.target_object,limit=1] run tag @s remove repo.held_by
execute as @e[tag=repo.target_object,limit=1] run scoreboard players set @s repo.holder_count 0
execute as @e[tag=repo.target_object,limit=1] run scoreboard players set @s repo.holder -1
execute as @e[tag=repo.target_object,limit=1] run scoreboard players set @s repo.holder_2 -1
execute as @e[tag=repo.target_object,limit=1] run scoreboard players set @s repo.holder_3 -1
execute as @e[tag=repo.target_object,limit=1] run scoreboard players set @s repo.holder_4 -1