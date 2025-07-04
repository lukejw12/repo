execute as @e[tag=repo.extraction_interaction] at @s if data entity @s interaction run function repo:extraction/process_interaction_click

execute as @e[tag=repo.extraction_interaction,type=interaction] run data remove entity @s interaction