# --- Quién debe "llegar" de nuevo: reconexión, muerte, espectador o creativo ---
tag @a[gamemode=spectator] remove wr.ok
tag @a[gamemode=creative] remove wr.ok
tag @a[scores={wr.left=1..}] remove wr.ok
scoreboard players reset @a[scores={wr.left=1..}] wr.left
tag @a[scores={wr.dc=1..}] remove wr.ok
scoreboard players reset @a[scores={wr.dc=1..}] wr.dc
# Quitar el límite temporal de vida aplicado el tick anterior (siempre, aunque esté desactivado)
execute as @e[type=minecraft:player,tag=wr.hpmod] run function worldreset:hp/unmod
# Nada se comparte durante la cuenta regresiva del reinicio
execute unless score #countdown wr.state matches -1 run return 0
# Contenedor del inventario compartido
scoreboard players set #hold wr.state 0
execute if score #share_inv wr.state matches 1 run function worldreset:inv/holder
# Los que llegan reciben el estado del equipo y no aportan cambios este tick
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=!wr.ok] run function worldreset:share/arrive
execute as @a[tag=wr.fdup] run function worldreset:food/up_done
# Una sola lectura de datos por jugador
scoreboard players set #src wr.state 0
execute as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok] run function worldreset:share/read
# Sincronizar
execute if score #share_hp wr.state matches 1 run function worldreset:hp/sync
execute if score #share_food wr.state matches 1 run function worldreset:food/sync
execute if score #src wr.state matches 1 as @e[type=minecraft:player,gamemode=!spectator,gamemode=!creative,tag=wr.ok,tag=!wr.invsrc] run function worldreset:inv/from_holder
tag @a remove wr.invsrc
tag @a remove wr.arrived
tag @a remove wr.hpskip
tag @a remove wr.fdskip
