
scoreboard players operation @s repo.temp = @s repo.selected_slot
scoreboard players operation @s repo.temp -= @s repo.prev_slot
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