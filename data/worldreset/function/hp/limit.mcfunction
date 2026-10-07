scoreboard players operation #amt wr.state = #e wr.state
scoreboard players operation #amt wr.state -= @s wr.m
execute store result storage worldreset:tmp amt double 0.01 run scoreboard players get #amt wr.state
function worldreset:hp/limit_m with storage worldreset:tmp
tag @s add wr.hpmod
