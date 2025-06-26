execute store result score @s repo.temp run scoreboard players get @s repo.holder

tag @s add repo.current_object
execute as @a run function repo:movement/check_if_holder

tag @s remove repo.current_object