# Vida del equipo (#hp, en centésimas) = vida anterior + suma de cambios de cada jugador
scoreboard players set #sum wr.state 0
scoreboard players set #td wr.state 0
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok,tag=!wr.arrived,tag=!wr.hpskip] run function worldreset:hp/delta
scoreboard players operation #hp wr.state += #sum wr.state
execute if score #hp wr.state matches 102401.. run scoreboard players set #hp wr.state 102400
# Se acabó la vida del equipo: mueren todos (dispara el reinicio)
execute if score #hp wr.state matches ..0 run function worldreset:hp/team_death
execute if score #td wr.state matches 1 run return 0
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok] run function worldreset:hp/apply
