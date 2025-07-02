
execute as @e[tag=repo.object,distance=..2.1] run function repo:extraction/extract_single_item
scoreboard players operation @s repo.collected_value = @s repo.temp