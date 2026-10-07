# Respaldo: si el límite de vida máxima no bajó la vida, aplicar daño directo exacto
execute store result score #h wr.state run data get entity @s Health 100
execute store result score #m wr.state run attribute @s minecraft:max_health get 100
scoreboard players operation #e wr.state = #hp wr.state
scoreboard players operation #e wr.state < #m wr.state
scoreboard players operation #h wr.state -= #e wr.state
execute if score #h wr.state matches 3.. run function worldreset:hp/force
