
scoreboard players set @s repo.raycast_steps 0
scoreboard players set @s repo.raycast_success 0
execute anchored eyes run function repo:raycast/step
particle minecraft:wax_on ~ ~-30 ~ 0 0 0 0 3000
