# Saturación de nivel N suma exactamente N+1 de hambre (se quita el efecto al tick siguiente)
scoreboard players remove #d wr.state 1
execute store result storage worldreset:tmp amp int 1 run scoreboard players get #d wr.state
function worldreset:food/up_m with storage worldreset:tmp
tag @s add wr.fdup
