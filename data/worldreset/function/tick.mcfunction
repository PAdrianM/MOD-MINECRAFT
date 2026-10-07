# Alguien murió -> iniciar cuenta regresiva
execute if score #enabled wr.state matches 1 if score #countdown wr.state matches -1 if entity @a[scores={wr.deaths=1..}] run function worldreset:trigger
# Cuenta regresiva en curso
execute if score #countdown wr.state matches 0.. run function worldreset:countdown_tick
# Poner al día a cada jugador vivo que no tenga el reinicio actual (incluye desconectados que vuelven
# y, en hardcore, al que murió cuando pulsa "Espectar mundo")
execute if score #gen wr.state matches 1.. as @e[type=minecraft:player] unless score @s wr.gen = #gen wr.state at @s run function worldreset:sync_player
# Inventario, corazones y hambre compartidos
function worldreset:share/tick
