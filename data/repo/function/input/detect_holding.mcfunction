execute if score @s repo.coas matches 1.. if predicate repo:holding_carrot_on_stick run scoreboard players add @s repo.timer 6
execute unless score @s repo.coas matches 1.. run scoreboard players remove @s repo.timer 1

execute if score @s repo.timer matches 9.. run scoreboard players set @s repo.timer 8

execute if score @s repo.timer matches ..-1 run scoreboard players set @s repo.timer 0

execute if score @s repo.timer matches 4 unless entity @e[tag=repo.click_detector,distance=..10] run function repo:input/spawn_click_detector
execute if score @s repo.timer matches 4.. run function repo:raycast/start_raycast

scoreboard players reset @s repo.coas