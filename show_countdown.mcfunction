scoreboard players operation #secs wr.state = #countdown wr.state
scoreboard players operation #secs wr.state /= #20 wr.state
title @a title {"text":"☠ GAME OVER ☠","color":"red","bold":true}
title @a subtitle [{"text":"Nuevo mundo en ","color":"yellow"},{"score":{"name":"#secs","objective":"wr.state"},"color":"yellow"}]
