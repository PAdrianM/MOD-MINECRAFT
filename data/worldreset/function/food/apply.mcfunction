scoreboard players operation #d wr.state = #food wr.state
scoreboard players operation #d wr.state -= @s wr.f
execute if score #d wr.state matches 1.. run function worldreset:food/up
execute if score #d wr.state matches ..-1 run function worldreset:food/down
