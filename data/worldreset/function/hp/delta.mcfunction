# Esperado = min(vida del equipo, vida máxima propia)
scoreboard players operation #e wr.state = #hp wr.state
scoreboard players operation #e wr.state < @s wr.m
scoreboard players operation #d wr.state = @s wr.h
scoreboard players operation #d wr.state -= #e wr.state
execute unless score #d wr.state matches -2..2 run scoreboard players operation #sum wr.state += #d wr.state
