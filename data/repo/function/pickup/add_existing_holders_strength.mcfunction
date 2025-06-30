scoreboard players operation @s repo.combined_strength -= @p repo.strength
scoreboard players set @s repo.holder_count 0

execute as @a run function repo:pickup/check_if_existing_holder

scoreboard players operation @s repo.combined_strength += @p repo.strength
scoreboard players add @s repo.holder_count 1