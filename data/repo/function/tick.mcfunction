execute as @a[scores={repo.coas=1..}] at @s run function repo:input/detect_holding
execute as @a at @s run function repo:input/detect_holding
execute as @a run function repo:input/check_scroll

execute as @a[tag=repo.holding] at @s run function repo:input/check_still_holding
execute as @e[tag=repo.extraction_zone] at @s run function repo:extraction/check_zone_items
execute as @e[tag=repo.quota_complete_sequence] at @s run function repo:extraction/handle_completion_sequence
execute as @e[tag=repo.final_extraction] at @s run function repo:extraction/handle_final_extraction
execute as @e[tag=repo.quota_interrupted] at @s run function repo:extraction/handle_interruption_timer
execute as @e[scores={repo.activation_timer=1..}] at @s run function repo:extraction/handle_activation_timer
function repo:extraction/interaction_handler
execute as @e[tag=repo.extraction_zone,scores={repo.surplus_timer=1..}] at @s run function repo:extraction/handle_surplus_timer
execute as @e[tag=repo.object] run function repo:physics/main_physics
execute as @e[tag=repo.held_by] run function repo:movement/follow_player
execute as @e[tag=repo.object] run function repo:damage/check_collision
execute as @e[tag=repo.damage_display] run function repo:damage/update_damage_timer
execute as @e[tag=repo.object,scores={repo.damage_cooldown=1..}] run scoreboard players remove @s repo.damage_cooldown 1
execute as @e[tag=repo.object] run scoreboard players remove @s repo.movement_cooldown 1
execute as @e[tag=repo.object] if score @s repo.movement_cooldown matches ..-1 run scoreboard players set @s repo.movement_cooldown 0
execute as @a run function repo:stamina/update_movement_detection
execute as @a run function repo:stamina/detect_sprinting
execute as @a[scores={repo.is_actually_sprinting=1}] run function repo:stamina/handle_stamina_drain
execute as @a run function repo:stamina/check_sprint_speed
execute as @a run function repo:stamina/handle_stamina_regen
execute as @a run function repo:stamina/update_stamina_display
effect give @a saturation infinite 100 true