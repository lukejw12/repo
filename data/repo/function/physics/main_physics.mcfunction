
execute unless entity @s[tag=repo.held_by] run function repo:physics/gravity
execute if entity @s[tag=repo.held_by] run function repo:physics/held_physics