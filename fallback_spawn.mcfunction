# No se encontró tierra seca: usar el último centro a Y=200 y dar caída lenta al aparecer
data modify storage worldreset:spawn x set from storage worldreset:center x
data modify storage worldreset:spawn z set from storage worldreset:center z
data modify storage worldreset:spawn y set value 200
scoreboard players set #fall wr.state 1
tellraw @a {"text":"(No se encontró tierra cerca: aparecerán en el aire con caída lenta)","color":"gray"}
