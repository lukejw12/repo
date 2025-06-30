tellraw @s [{"text":"DEBUG: In scrolled_forward","color":"aqua"}]
execute if entity @s[tag=repo.holding] run tellraw @s [{"text":"DEBUG: Player is holding, calling pull_object_multi","color":"aqua"}]
execute if entity @s[tag=repo.holding] run function repo:input/pull_object_multi