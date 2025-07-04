execute unless score @s repo.is_actually_sprinting matches 1 run scoreboard players add @s repo.stamina_regen_timer 1

execute unless score @s repo.is_actually_sprinting matches 1 if predicate repo:is_sneaking if score @s repo.is_moving matches 0 if score @s repo.stamina_regen_timer matches 8.. run scoreboard players add @s repo.stamina 5
execute unless score @s repo.is_actually_sprinting matches 1 if predicate repo:is_sneaking if score @s repo.is_moving matches 0 if score @s repo.stamina_regen_timer matches 8.. run scoreboard players set @s repo.stamina_regen_timer 0

execute unless score @s repo.is_actually_sprinting matches 1 if predicate repo:is_sneaking if score @s repo.is_moving matches 1 if score @s repo.stamina_regen_timer matches 15.. run scoreboard players add @s repo.stamina 5
execute unless score @s repo.is_actually_sprinting matches 1 if predicate repo:is_sneaking if score @s repo.is_moving matches 1 if score @s repo.stamina_regen_timer matches 15.. run scoreboard players set @s repo.stamina_regen_timer 0

execute unless score @s repo.is_actually_sprinting matches 1 unless predicate repo:is_sneaking if score @s repo.stamina_regen_timer matches 25.. run scoreboard players add @s repo.stamina 5
execute unless score @s repo.is_actually_sprinting matches 1 unless predicate repo:is_sneaking if score @s repo.stamina_regen_timer matches 25.. run scoreboard players set @s repo.stamina_regen_timer 0

execute if score @s repo.stamina matches 101.. run scoreboard players set @s repo.stamina 100