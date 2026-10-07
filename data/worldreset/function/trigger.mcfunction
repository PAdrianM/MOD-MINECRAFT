# Borrar al instante todo lo que soltó el que murió (items y XP alrededor del lugar de muerte)
execute as @a[scores={wr.deaths=1..}] at @s run kill @e[type=minecraft:item,distance=..32]
execute as @a[scores={wr.deaths=1..}] at @s run kill @e[type=minecraft:experience_orb,distance=..32]
scoreboard players reset @a wr.deaths
scoreboard players operation #countdown wr.state = #seconds wr.state
scoreboard players operation #countdown wr.state *= #20 wr.state
tellraw @a {"text":"☠ Alguien murió. El mundo se reiniciará para todos...","color":"gold"}
gamemode spectator @a
execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
