execute unless entity @s[tag=repo.held_by] run function repo:damage/detect_wall_collision
execute if entity @s[tag=repo.held_by] run function repo:damage/detect_held_collision