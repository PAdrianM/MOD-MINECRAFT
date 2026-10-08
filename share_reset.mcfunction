# Estado compartido como en el primer spawn
scoreboard players set #hp wr.state 2000
scoreboard players set #food wr.state 20
execute as @a run attribute @s minecraft:max_health modifier remove worldreset:hp_sync
effect clear @a minecraft:hunger
tag @a remove wr.hpmod
tag @a remove wr.fdrain
tag @a remove wr.fdup
tag @a remove wr.ok
data modify storage worldreset:inv inv set value []
data modify storage worldreset:inv eq set value {}
function worldreset:inv/clear_holder
