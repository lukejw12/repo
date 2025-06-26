# Usage: function repo:spawn_object {type:stone,weight:3,fragile_percentage:3,base_value:800}

$summon item ~ ~1 ~ {Item:{id:"minecraft:$(type)",count:1},PickupDelay:32767,Tags:["repo.object","repo.new_object"],NoGravity:0b,Invulnerable:0b}
$execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.weight $(weight)
$execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.fragile_percentage $(fragile_percentage)
$execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.base_value $(base_value)
$execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.current_value $(base_value)
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.was_on_ground 0
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.damage_timer 0
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.holder -1

tag @e[tag=repo.new_object] remove repo.new_object