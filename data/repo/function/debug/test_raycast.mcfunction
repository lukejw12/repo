
tellraw @s [{"text":"=== RAYCAST TEST ===","color":"gold"}]
tellraw @s [{"text":"Starting manual raycast...","color":"white"}]

scoreboard players set @s repo.raycast_steps 0
scoreboard players set @s repo.raycast_success 0
execute anchored eyes run function repo:debug/debug_raycast_step