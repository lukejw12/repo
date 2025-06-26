$execute at @s run summon text_display ~ ~1 ~ {text:[{"text":"-$(damage_amount) Value","color":"red"}],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:["repo.damage_display"],background:0}

execute at @s as @e[tag=repo.damage_display,limit=1,sort=nearest] run scoreboard players set @s repo.damage_timer 10