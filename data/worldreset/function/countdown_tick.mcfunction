kill @e[type=minecraft:item]
kill @e[type=minecraft:experience_orb]
scoreboard players operation #m wr.state = #countdown wr.state
scoreboard players operation #m wr.state %= #20 wr.state
execute if score #m wr.state matches 0 if score #countdown wr.state matches 1.. run function worldreset:show_countdown
scoreboard players remove #countdown wr.state 1
execute if score #countdown wr.state matches ..0 run function worldreset:reset
