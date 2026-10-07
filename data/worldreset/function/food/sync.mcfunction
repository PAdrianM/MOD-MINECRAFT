# Los que se estaban vaciando y ya llegaron al nivel del equipo
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok,tag=wr.fdrain] if score @s wr.f <= #food wr.state run function worldreset:food/drain_stop
# Hambre del equipo = anterior + suma de cambios de cada jugador
scoreboard players set #sum wr.state 0
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok,tag=!wr.arrived,tag=!wr.fdskip,tag=!wr.fdrain] run function worldreset:food/delta
scoreboard players operation #food wr.state += #sum wr.state
execute if score #food wr.state matches 21.. run scoreboard players set #food wr.state 20
execute if score #food wr.state matches ..-1 run scoreboard players set #food wr.state 0
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok,tag=!wr.fdrain] run function worldreset:food/apply
