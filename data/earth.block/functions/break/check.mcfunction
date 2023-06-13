scoreboard players set @s earth.block.clone 0

clone ~ ~ ~ ~ ~ ~ to earth.block:block_palette 99999 300 99999
execute positioned as @s in earth.block:block_palette unless blocks ~ ~ ~ ~ ~ ~ 99999 300 99999 all run scoreboard players set @s earth.block.clone 1

execute if score @s earth.block.clone matches 1 run function earth.block:break/break