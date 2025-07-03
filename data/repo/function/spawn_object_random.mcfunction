execute store result score #random_base repo.temp run random value 0..10000

$scoreboard players set #weight_min repo.temp $(weight_min)
$scoreboard players set #weight_max repo.temp $(weight_max)
$scoreboard players set #fragile_min repo.temp $(fragile_min)
$scoreboard players set #fragile_max repo.temp $(fragile_max)
$scoreboard players set #value_min repo.temp $(value_min)
$scoreboard players set #value_max repo.temp $(value_max)

scoreboard players operation #weight_range repo.temp = #weight_max repo.temp
scoreboard players operation #weight_range repo.temp -= #weight_min repo.temp
scoreboard players add #weight_range repo.temp 1

scoreboard players operation #fragile_range repo.temp = #fragile_max repo.temp
scoreboard players operation #fragile_range repo.temp -= #fragile_min repo.temp
scoreboard players add #fragile_range repo.temp 1

scoreboard players operation #value_range repo.temp = #value_max repo.temp
scoreboard players operation #value_range repo.temp -= #value_min repo.temp
scoreboard players add #value_range repo.temp 1

execute store result score #random_weight_offset repo.temp run random value 0..10000
execute store result score #random_fragile_offset repo.temp run random value 0..10000
execute store result score #random_value_offset repo.temp run random value 0..10000

scoreboard players operation #random_weight_offset repo.temp %= #weight_range repo.temp
scoreboard players operation #random_fragile_offset repo.temp %= #fragile_range repo.temp
scoreboard players operation #random_value_offset repo.temp %= #value_range repo.temp

scoreboard players operation #final_weight repo.temp = #weight_min repo.temp
scoreboard players operation #final_weight repo.temp += #random_weight_offset repo.temp

scoreboard players operation #final_fragile repo.temp = #fragile_min repo.temp
scoreboard players operation #final_fragile repo.temp += #random_fragile_offset repo.temp

scoreboard players operation #final_value repo.temp = #value_min repo.temp
scoreboard players operation #final_value repo.temp += #random_value_offset repo.temp

$summon item ~ ~ ~ {Item:{id:"minecraft:$(type)",count:1},PickupDelay:32767,Tags:["repo.object","repo.new_object"],NoGravity:0b,Invulnerable:0b}

execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players operation @s repo.weight = #final_weight repo.temp
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players operation @s repo.fragile_percentage = #final_fragile repo.temp
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players operation @s repo.base_value = #final_value repo.temp
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players operation @s repo.current_value = #final_value repo.temp

execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.was_on_ground 0
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.damage_timer 0
execute as @e[tag=repo.new_object,limit=1,sort=nearest] run scoreboard players set @s repo.holder -1

tag @e[tag=repo.new_object] remove repo.new_object

tellraw @p [{"text":"[R.E.P.O.] ","color":"gold"},{"text":"Random object spawned! Weight: ","color":"green"},{"score":{"name":"#final_weight","objective":"repo.temp"},"color":"yellow"},{"text":", Fragile: ","color":"green"},{"score":{"name":"#final_fragile","objective":"repo.temp"},"color":"yellow"},{"text":", Value: ","color":"green"},{"score":{"name":"#final_value","objective":"repo.temp"},"color":"yellow"}]