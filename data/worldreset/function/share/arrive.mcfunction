tag @s add wr.ok
tag @s add wr.arrived
execute if score #share_inv wr.state matches 1 if score #hold wr.state matches 1 if score #inv_init wr.state matches 1 run function worldreset:inv/from_holder
