scoreboard players operation #e wr.state = #hp wr.state
scoreboard players operation #e wr.state < @s wr.m
scoreboard players operation #d wr.state = @s wr.h
scoreboard players operation #d wr.state -= #e wr.state
execute if score #d wr.state matches -2..2 run return 0
# Limitar la vida máxima a la del equipo por 1 tick: baja la vida exacta sin daño ni animación
execute if score #e wr.state < @s wr.m run function worldreset:hp/limit
# Si tiene menos que el equipo: curar (queda topado en la vida del equipo)
execute if score #d wr.state matches ..-3 run effect give @s minecraft:instant_health 1 10 true
