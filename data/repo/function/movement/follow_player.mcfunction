execute store result score @s repo.current_tick run time query gametime
execute if score @s repo.last_tick = @s repo.current_tick run return 0
scoreboard players operation @s repo.last_tick = @s repo.current_tick

tellraw @a [{"text":"DEBUG: ===== FOLLOW_PLAYER START =====","color":"red"}]
tellraw @a [{"text":"DEBUG: Object holder_count: "},{"score":{"name":"@s","objective":"repo.holder_count"},"color":"white"}]

tag @s add repo.current_object

execute if score @s repo.holder_count matches 2.. run tellraw @a [{"text":"DEBUG: Using multi-holder positioning","color":"green"}]
execute if score @s repo.holder_count matches 2.. run function repo:movement/calculate_multi_holder_position

execute if score @s repo.holder_count matches 1 run tellraw @a [{"text":"DEBUG: Using single holder with offset","color":"yellow"}]
execute if score @s repo.holder_count matches 1 run function repo:movement/legacy_single_holder_with_offset

execute unless score @s repo.holder_count matches 1.. run tellraw @a [{"text":"DEBUG: Using legacy single holder","color":"red"}]
execute unless score @s repo.holder_count matches 1.. run function repo:movement/legacy_single_holder

tag @s remove repo.current_object
tellraw @a [{"text":"DEBUG: ===== FOLLOW_PLAYER END =====","color":"red"}]