scoreboard players add #tries wr.state 1
execute store result score #x wr.state run random value -1000000..1000000
execute store result score #z wr.state run random value -1000000..1000000
# Distancia al spawn anterior (por eje, en valor absoluto)
scoreboard players operation #dx wr.state = #x wr.state
scoreboard players operation #dx wr.state -= #px wr.state
execute if score #dx wr.state matches ..-1 run scoreboard players operation #dx wr.state *= #neg1 wr.state
scoreboard players operation #dz wr.state = #z wr.state
scoreboard players operation #dz wr.state -= #pz wr.state
execute if score #dz wr.state matches ..-1 run scoreboard players operation #dz wr.state *= #neg1 wr.state
scoreboard players set #bad wr.state 0
# Demasiado cerca del spawn anterior
execute if score #dx wr.state matches ..55999 if score #dz wr.state matches ..55999 run scoreboard players set #bad wr.state 1
# Demasiado cerca del spawn original
execute if score #x wr.state matches -55999..55999 if score #z wr.state matches -55999..55999 run scoreboard players set #bad wr.state 1
# Reintentar con otro punto aleatorio
execute if score #bad wr.state matches 1 if score #tries wr.state matches ..30 run function worldreset:pick_try
