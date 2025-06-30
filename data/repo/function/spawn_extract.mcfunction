# Usage: function repo:spawn_extract {quota:20000}
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["repo.extraction_zone","repo.new_extraction"],CustomName:[{"text":"Extraction Zone 0/0 (0%)","color":"gold","bold":true}],CustomNameVisible:1b}
$execute as @e[tag=repo.new_extraction,limit=1] run scoreboard players set @s repo.quota $(quota)
execute as @e[tag=repo.new_extraction,limit=1] run scoreboard players set @s repo.collected_value 0

tag @e[tag=repo.new_extraction] remove repo.new_extraction
$tellraw @p [{"text":"[R.E.P.O.] ","color":"gold"},{"text":"Extraction zone spawned! Quota: ","color":"green"},{"text":"$(quota)","color":"yellow"},{"text":" value","color":"green"}]