execute store result score @s repo.selected_slot run data get entity @s SelectedItemSlot

execute if entity @s[tag=repo.holding] unless score @s repo.prev_slot = @s repo.selected_slot run function repo:input/handle_scroll

scoreboard players operation @s repo.prev_slot = @s repo.selected_slot