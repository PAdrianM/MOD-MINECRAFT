# /function worldreset:now  -> reiniciar ya
execute if score #countdown wr.state matches -1 run function worldreset:trigger
