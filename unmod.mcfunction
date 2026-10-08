attribute @s minecraft:max_health modifier remove worldreset:hp_sync
tag @s remove wr.hpmod
tag @s add wr.hpskip
execute if score #share_hp wr.state matches 1 if score #countdown wr.state matches -1 run function worldreset:hp/verify
