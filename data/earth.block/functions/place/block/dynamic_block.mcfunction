tag @s remove earth.block.new

#Place block dynamically
setblock ~ ~ ~ stone
execute at @s in earth.block:block_palette run forceload add ~ ~
clone from overworld 2999999 319 2999999 2999999 319 2999999 ~ ~ ~
clone from overworld 2999999 319 2999999 2999999 319 2999999 to earth.block:block_palette ~ ~ ~