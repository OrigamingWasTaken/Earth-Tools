schedule function earth.block:tick 1t

#Forceload
forceload add 2999999 2999999
setblock 2999999 318 2999999 bedrock

#Scoreboard
scoreboard objectives add earth.block.clone dummy
scoreboard objectives add earth.block.break_pos.x dummy
scoreboard objectives add earth.block.break_pos.y dummy
scoreboard objectives add earth.block.break_pos.z dummy
scoreboard objectives add earth.block.temp dummy

schedule function earth.block:tick 1t

say <Console Message> Earth Tools reloaded!
tellraw @a [{"text":"[","color":"gray"},{"text":"Earth Tools","color":"light_purple"},{"text":"]","color":"gray"},{"text":" has reloaded!","color":"green"}]