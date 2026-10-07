# Este jugador cambió su inventario: pasa a ser el inventario oficial del equipo
scoreboard players set #src wr.state 1
scoreboard players set #inv_init wr.state 1
data modify storage worldreset:inv inv set value []
data modify storage worldreset:inv inv set from storage worldreset:p n.Inventory
data modify storage worldreset:inv eq set value {}
data modify storage worldreset:inv eq set from storage worldreset:p n.equipment
tag @s add wr.invsrc
function worldreset:inv/to_holder
