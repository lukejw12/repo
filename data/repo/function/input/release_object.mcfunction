
tag @s remove repo.held_by
data modify entity @s NoGravity set value 0b
data modify entity @s Invulnerable set value 0b
scoreboard players set @s repo.holder -1