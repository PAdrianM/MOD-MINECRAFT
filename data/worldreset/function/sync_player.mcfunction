# Ejecutado como cada jugador que necesita el reinicio actual
scoreboard players operation @s wr.gen = #gen wr.state
function worldreset:tp_spawn with storage worldreset:spawn
clear @s
item replace entity @s enderchest.0 with minecraft:air
item replace entity @s enderchest.1 with minecraft:air
item replace entity @s enderchest.2 with minecraft:air
item replace entity @s enderchest.3 with minecraft:air
item replace entity @s enderchest.4 with minecraft:air
item replace entity @s enderchest.5 with minecraft:air
item replace entity @s enderchest.6 with minecraft:air
item replace entity @s enderchest.7 with minecraft:air
item replace entity @s enderchest.8 with minecraft:air
item replace entity @s enderchest.9 with minecraft:air
item replace entity @s enderchest.10 with minecraft:air
item replace entity @s enderchest.11 with minecraft:air
item replace entity @s enderchest.12 with minecraft:air
item replace entity @s enderchest.13 with minecraft:air
item replace entity @s enderchest.14 with minecraft:air
item replace entity @s enderchest.15 with minecraft:air
item replace entity @s enderchest.16 with minecraft:air
item replace entity @s enderchest.17 with minecraft:air
item replace entity @s enderchest.18 with minecraft:air
item replace entity @s enderchest.19 with minecraft:air
item replace entity @s enderchest.20 with minecraft:air
item replace entity @s enderchest.21 with minecraft:air
item replace entity @s enderchest.22 with minecraft:air
item replace entity @s enderchest.23 with minecraft:air
item replace entity @s enderchest.24 with minecraft:air
item replace entity @s enderchest.25 with minecraft:air
item replace entity @s enderchest.26 with minecraft:air
xp set @s 0 levels
xp set @s 0 points
effect clear @s
advancement revoke @s everything
recipe take @s *
gamemode survival @s
effect give @s minecraft:instant_health 1 20 true
effect give @s minecraft:saturation 1 20 true
execute if score #fall wr.state matches 1 run effect give @s minecraft:slow_falling 120 0 true
title @s title {"text":"Nuevo intento","color":"green","bold":true}
title @s subtitle {"text":"¡Que nadie muera!","color":"gray"}
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
