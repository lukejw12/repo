tellraw @s [{"text":"DEBUG: Scroll detected - Current: "},{"score":{"name":"@s","objective":"repo.selected_slot"},"color":"white"},{"text":" Previous: "},{"score":{"name":"@s","objective":"repo.prev_slot"},"color":"white"}]

scoreboard players operation @s repo.temp = @s repo.selected_slot
scoreboard players operation @s repo.temp -= @s repo.prev_slot

execute if score @s repo.temp matches 1 run tellraw @s [{"text":"DEBUG: Forward scroll +1","color":"green"}]
execute if score @s repo.temp matches 2 run tellraw @s [{"text":"DEBUG: Forward scroll +2","color":"green"}]
execute if score @s repo.temp matches 3 run tellraw @s [{"text":"DEBUG: Forward scroll +3","color":"green"}]
execute if score @s repo.temp matches 4 run tellraw @s [{"text":"DEBUG: Forward scroll +4","color":"green"}]
execute if score @s repo.temp matches -8 run tellraw @s [{"text":"DEBUG: Forward scroll wraparound","color":"green"}]

execute if score @s repo.temp matches -1 run tellraw @s [{"text":"DEBUG: Backward scroll -1","color":"yellow"}]
execute if score @s repo.temp matches -2 run tellraw @s [{"text":"DEBUG: Backward scroll -2","color":"yellow"}]
execute if score @s repo.temp matches -3 run tellraw @s [{"text":"DEBUG: Backward scroll -3","color":"yellow"}]
execute if score @s repo.temp matches -4 run tellraw @s [{"text":"DEBUG: Backward scroll -4","color":"yellow"}]
execute if score @s repo.temp matches 8 run tellraw @s [{"text":"DEBUG: Backward scroll wraparound","color":"yellow"}]

execute if score @s repo.temp matches 1 run function repo:input/scrolled_forward
execute if score @s repo.temp matches 2 run function repo:input/scrolled_forward
execute if score @s repo.temp matches 3 run function repo:input/scrolled_forward
execute if score @s repo.temp matches 4 run function repo:input/scrolled_forward
execute if score @s repo.temp matches -8 run function repo:input/scrolled_forward

execute if score @s repo.temp matches -1 run function repo:input/scrolled_backward
execute if score @s repo.temp matches -2 run function repo:input/scrolled_backward
execute if score @s repo.temp matches -3 run function repo:input/scrolled_backward
execute if score @s repo.temp matches -4 run function repo:input/scrolled_backward
execute if score @s repo.temp matches 8 run function repo:input/scrolled_backward