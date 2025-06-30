
tellraw @a [{"text":"[R.E.P.O.] ","color":"gold","bold":true},{"text":"EXTRACTION COMPLETE!","color":"green","bold":true}]
tellraw @a [{"text":"Quota fulfilled: ","color":"green"},{"score":{"name":"@s","objective":"repo.collected_value"},"color":"yellow"},{"text":"/","color":"white"},{"score":{"name":"@s","objective":"repo.quota"},"color":"white"}]

particle minecraft:firework ~ ~2 ~ 1 1 1 0.2 50 force @a
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 2 1

data modify entity @s CustomName set value [{"text":"✅ EXTRACTION COMPLETE ✅ ","color":"green","bold":true},{"score":{"name":"@s","objective":"repo.collected_value"},"color":"gold"},{"text":"/","color":"white"},{"score":{"name":"@s","objective":"repo.quota"},"color":"white"},{"text":" (100%)","color":"green"}]
tag @s remove repo.extraction_zone
tag @s add repo.completed_extraction