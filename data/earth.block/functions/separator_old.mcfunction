# For every time i want to delay some execution in a function using schedule
tag @s add earth.block.schedule

execute as @e[scores={earth.block.schedule=1}] at @s run function earth.block:blocks/place/block_final
execute as @e[scores={earth.block.clone=1..}] at @s run function earth.block:blocks/break/break