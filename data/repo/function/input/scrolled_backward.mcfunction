tellraw @s [{"text":"DEBUG: In scrolled_backward","color":"aqua"}]
execute if entity @s[tag=repo.holding] run tellraw @s [{"text":"DEBUG: Player is holding, calling push_object_multi","color":"aqua"}]
execute if entity @s[tag=repo.holding] run function repo:input/push_object_multi