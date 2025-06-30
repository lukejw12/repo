execute if score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_x /= @s repo.temp
execute if score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_y /= @s repo.temp
execute if score @s repo.temp matches 1.. run scoreboard players operation @s repo.center_z /= @s repo.temp

tellraw @a [{"text":"DEBUG: Before offset - center: "},{"score":{"name":"@s","objective":"repo.center_x"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.center_y"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.center_z"},"color":"white"}]

tag @s add repo.current_object
execute as @a run function repo:movement/apply_distance_offset_to_center
tag @s remove repo.current_object

tellraw @a [{"text":"DEBUG: After offset - center: "},{"score":{"name":"@s","objective":"repo.center_x"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.center_y"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"repo.center_z"},"color":"white"}]

scoreboard players operation @s repo.target_x = @s repo.center_x
scoreboard players operation @s repo.target_y = @s repo.center_y
scoreboard players operation @s repo.target_z = @s repo.center_z
scoreboard players add @s repo.target_y 1600

tellraw @a [{"text":"DEBUG: Final target: "},{"score":{"name":"@s","objective":"repo.target_x"},"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"repo.target_y"},"color":"green"},{"text":" "},{"score":{"name":"@s","objective":"repo.target_z"},"color":"green"}]

function repo:movement/apply_weight_and_motion