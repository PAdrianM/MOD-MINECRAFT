data modify storage worldreset:p n set from entity @s
execute store result score @s wr.h run data get storage worldreset:p n.Health 100
execute store result score @s wr.f run data get storage worldreset:p n.foodLevel
execute store result score @s wr.m run attribute @s minecraft:max_health get 100
execute if score #share_inv wr.state matches 1 if score #hold wr.state matches 1 if entity @s[tag=!wr.arrived] run function worldreset:inv/check
