
execute at @s run summon text_display ~ ~1.5 ~ {text:[{"text":"💥 BROKEN 💥","color":"dark_red","bold":true}],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},Tags:["repo.damage_display"],background:0}

execute at @s as @e[tag=repo.damage_display,limit=1,sort=nearest] run scoreboard players set @s repo.damage_timer 15

execute at @s run particle minecraft:block{block_state:"minecraft:glass"} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20 force @a
execute at @s run particle minecraft:explosion ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a
execute at @s run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1 0.8