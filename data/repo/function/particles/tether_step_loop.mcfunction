execute store result storage repo:tether distance float 0.001 run scoreboard players get @s repo.tether_step
function repo:particles/spawn_tether_particle with storage repo:tether

scoreboard players add @s repo.tether_step 100
execute if score @s repo.tether_step matches ..3000 run function repo:particles/tether_step_loop