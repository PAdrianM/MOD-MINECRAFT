# Se ejecuta COMO el marcador. La posición se lee con @s (con @e no se encontraría en zona no cargada).
scoreboard players set #ok wr.state 0
function worldreset:pick_center
function worldreset:spread with storage worldreset:center
execute if score #ok wr.state matches 0 run function worldreset:pick_center
execute if score #ok wr.state matches 0 run function worldreset:spread with storage worldreset:center
execute if score #ok wr.state matches 0 run function worldreset:pick_center
execute if score #ok wr.state matches 0 run function worldreset:spread with storage worldreset:center
execute if score #ok wr.state matches 0 run function worldreset:pick_center
execute if score #ok wr.state matches 0 run function worldreset:spread with storage worldreset:center
execute if score #ok wr.state matches 0 run function worldreset:pick_center
execute if score #ok wr.state matches 0 run function worldreset:spread with storage worldreset:center
execute if score #ok wr.state matches 1 run function worldreset:save_spawn
kill @s
