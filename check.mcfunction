# ¿El inventario de este jugador es distinto al del equipo?
data modify storage worldreset:p inv set value []
data modify storage worldreset:p inv set from storage worldreset:p n.Inventory
data modify storage worldreset:p eq set value {}
data modify storage worldreset:p eq set from storage worldreset:p n.equipment
execute store success score #c1 wr.state run data modify storage worldreset:p inv set from storage worldreset:inv inv
execute store success score #c2 wr.state run data modify storage worldreset:p eq set from storage worldreset:inv eq
execute if score #src wr.state matches 0 if score #c1 wr.state matches 1 run function worldreset:inv/become_source
execute if score #src wr.state matches 0 if score #c2 wr.state matches 1 run function worldreset:inv/become_source
