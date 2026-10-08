# Se ejecuta al cargar el mundo o con /reload
scoreboard objectives add wr.deaths deathCount
scoreboard objectives add wr.gen dummy
scoreboard objectives add wr.state dummy
scoreboard objectives add wr.left minecraft.custom:minecraft.leave_game
scoreboard objectives add wr.dc deathCount
scoreboard objectives add wr.h dummy
scoreboard objectives add wr.f dummy
scoreboard objectives add wr.m dummy
scoreboard players set #20 wr.state 20
scoreboard players set #neg1 wr.state -1
function worldreset:config
execute unless score #gen wr.state matches -2147483648.. run scoreboard players set #gen wr.state 0
execute unless score #countdown wr.state matches -2147483648.. run scoreboard players set #countdown wr.state -1
# Último spawn usado (al inicio, el original 0,0)
execute unless score #px wr.state matches -2147483648.. run scoreboard players set #px wr.state 0
execute unless score #pz wr.state matches -2147483648.. run scoreboard players set #pz wr.state 0
# Estado compartido (vida en centésimas: 2000 = 20 de vida = 10 corazones)
execute unless score #hp wr.state matches -2147483648.. run scoreboard players set #hp wr.state 2000
execute unless score #food wr.state matches -2147483648.. run scoreboard players set #food wr.state 20
execute unless score #inv_init wr.state matches -2147483648.. run scoreboard players set #inv_init wr.state 0
execute unless data storage worldreset:inv inv run data modify storage worldreset:inv inv set value []
execute unless data storage worldreset:inv eq run data modify storage worldreset:inv eq set value {}
# Chunk siempre cargado donde viven los 2 barriles del inventario compartido (borde del mundo)
execute in minecraft:overworld run forceload add 29999904 29999904
