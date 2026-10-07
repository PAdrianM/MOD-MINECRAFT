# Elige un centro aleatorio (±1 000 000) que esté a 56 000+ bloques del spawn ANTERIOR y del ORIGINAL (0,0).
# (56 000 = 50 000 de margen + 6 000 que spreadplayers puede desplazar al buscar tierra)
scoreboard players set #tries wr.state 0
function worldreset:pick_try
execute store result storage worldreset:center x int 1 run scoreboard players get #x wr.state
execute store result storage worldreset:center z int 1 run scoreboard players get #z wr.state
