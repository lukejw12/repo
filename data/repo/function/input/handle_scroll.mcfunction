
scoreboard players operation @s repo.temp = @s repo.selected_slot
scoreboard players operation @s repo.temp -= @s repo.prev_slot


execute if score @s repo.temp matches 1..4 run function repo:input/scrolled_forward
execute if score @s repo.temp matches -8..-5 run function repo:input/scrolled_forward

execute if score @s repo.temp matches -4..-1 run function repo:input/scrolled_backward
execute if score @s repo.temp matches 5..8 run function repo:input/scrolled_backward