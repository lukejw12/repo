
summon vex ~ 100 ~ {Silent:1b,NoAI:1b,Health:20f,Tags:["repo.click_detector","repo.new_detector"]}

#effect give @e[tag=repo.new_detector,limit=1] minecraft:invisibility infinite 0 true
attribute @e[tag=repo.new_detector,limit=1] scale base set 2

execute store result score @e[tag=repo.new_detector,limit=1] repo.holder run data get entity @s UUID[0]

execute anchored eyes positioned ^ ^ ^1 run tp @e[tag=repo.new_detector,limit=1] ~ ~1 ~

tag @e[tag=repo.new_detector] remove repo.new_detector