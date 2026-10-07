# Se ejecuta al cargar el mundo o con /reload
scoreboard objectives add wr.deaths deathCount
scoreboard objectives add wr.gen dummy
scoreboard objectives add wr.state dummy
scoreboard players set #20 wr.state 20
execute unless score #enabled wr.state matches -2147483648.. run scoreboard players set #enabled wr.state 1
execute unless score #gen wr.state matches -2147483648.. run scoreboard players set #gen wr.state 0
execute unless score #countdown wr.state matches -2147483648.. run scoreboard players set #countdown wr.state -1
execute unless score #seconds wr.state matches -2147483648.. run scoreboard players set #seconds wr.state 5
scoreboard players set #neg1 wr.state -1
# Último spawn usado (al inicio, el original 0,0)
execute unless score #px wr.state matches -2147483648.. run scoreboard players set #px wr.state 0
execute unless score #pz wr.state matches -2147483648.. run scoreboard players set #pz wr.state 0
