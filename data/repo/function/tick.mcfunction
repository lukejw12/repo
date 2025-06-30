execute as @a[scores={repo.coas=1..}] at @s run function repo:input/detect_holding
execute as @a at @s run function repo:input/detect_holding
execute as @a run function repo:input/check_scroll

execute as @a[tag=repo.holding] at @s run function repo:input/check_still_holding
execute as @e[tag=repo.extraction_zone] at @s run function repo:extraction/check_zone_items
execute as @e[tag=repo.object] run function repo:physics/main_physics
execute as @e[tag=repo.held_by] run function repo:movement/follow_player
execute as @e[tag=repo.object] run function repo:damage/check_collision
execute as @e[tag=repo.damage_display] run function repo:damage/update_damage_timer
execute as @e[tag=repo.object,scores={repo.damage_cooldown=1..}] run scoreboard players remove @s repo.damage_cooldown 1