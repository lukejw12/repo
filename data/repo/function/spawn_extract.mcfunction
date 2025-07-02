execute store result score #extraction_id repo.temp run time query gametime
scoreboard players operation #extraction_id repo.temp %= #100000 repo.temp

execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["repo.extraction_zone","repo.new_extraction"],CustomName:[{"text":"Extraction Zone 0/0 (0%)","color":"gold","bold":true}],CustomNameVisible:1b}

execute align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.5 ~ {Tags:["repo.extraction_display","repo.new_display"],item:{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:item_model":"repo:extraction_zone/faces/extraction_zone_0"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item_display:"ground"}

execute align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~-2.75 ~ {Tags:["repo.cover_display","repo.new_cover"],item:{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:item_model":"repo:extraction_zone/cover/extraction_zone_cover_1"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item_display:"ground",teleport_duration:5,brightness:{block:7,sky:15}}

scoreboard players operation @e[tag=repo.new_extraction,limit=1] repo.extraction_id = #extraction_id repo.temp
scoreboard players operation @e[tag=repo.new_display] repo.extraction_id = #extraction_id repo.temp
scoreboard players operation @e[tag=repo.new_cover] repo.extraction_id = #extraction_id repo.temp

$execute as @e[tag=repo.new_extraction,limit=1] run scoreboard players set @s repo.quota $(quota)
execute as @e[tag=repo.new_extraction,limit=1] run scoreboard players set @s repo.collected_value 0

execute if entity @e[tag=repo.extraction_zone,tag=!repo.new_extraction] as @e[tag=repo.new_cover,limit=1] run item replace entity @s contents with carved_pumpkin[item_model="repo:extraction_zone/cover/extraction_zone_cover_3"]
execute if entity @e[tag=repo.extraction_zone,tag=!repo.new_extraction] run tag @e[tag=repo.new_extraction,limit=1] add repo.locked_extraction
execute if entity @e[tag=repo.extraction_zone,tag=!repo.new_extraction] as @e[tag=repo.new_extraction,limit=1] at @s run fill ~2 ~ ~2 ~-2 ~3 ~-2 minecraft:barrier

execute unless entity @e[tag=repo.extraction_zone,tag=!repo.new_extraction] run scoreboard players set @e[tag=repo.new_extraction,limit=1] repo.activation_timer 60

tag @e[tag=repo.new_extraction] remove repo.new_extraction
tag @e[tag=repo.new_cover] remove repo.new_cover
tag @e[tag=repo.new_display] remove repo.new_display

$tellraw @p [{"text":"[R.E.P.O.] ","color":"gold"},{"text":"Extraction zone spawned! Quota: ","color":"green"},{"text":"$(quota)","color":"yellow"},{"text":" value","color":"green"}]