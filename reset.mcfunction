scoreboard players set #countdown wr.state -1
scoreboard players add #gen wr.state 1
time set 0
weather clear
kill @e[type=minecraft:item]
kill @e[type=minecraft:experience_orb]
# Spawn lejano en terreno nunca explorado (se borra el anterior para no reutilizarlo nunca)
# Recordar el spawn anterior para alejarse 50 000+ de él
execute if data storage worldreset:spawn x store result score #px wr.state run data get storage worldreset:spawn x
execute if data storage worldreset:spawn z store result score #pz wr.state run data get storage worldreset:spawn z
data remove storage worldreset:spawn x
data remove storage worldreset:spawn y
data remove storage worldreset:spawn z
scoreboard players set #fall wr.state 0
kill @e[type=minecraft:marker,tag=wr.spawn]
execute as @a[limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["wr.spawn"]}
execute as @e[type=minecraft:marker,tag=wr.spawn,limit=1] run function worldreset:place_marker
execute unless data storage worldreset:spawn x run function worldreset:pick_center
execute unless data storage worldreset:spawn x run function worldreset:fallback_spawn
function worldreset:set_world_spawn with storage worldreset:spawn
title @a clear
tellraw @a [{"text":"Mundo reiniciado. Reinicio #","color":"green"},{"score":{"name":"#gen","objective":"wr.state"},"color":"green"}]
tellraw @a [{"text":"Nuevo spawn: X ","color":"aqua"},{"nbt":"x","storage":"worldreset:spawn","color":"white"},{"text":"  Y ","color":"aqua"},{"nbt":"y","storage":"worldreset:spawn","color":"white"},{"text":"  Z ","color":"aqua"},{"nbt":"z","storage":"worldreset:spawn","color":"white"}]
