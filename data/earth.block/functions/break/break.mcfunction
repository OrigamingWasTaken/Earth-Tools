setblock ~ ~ ~ air
execute at @s in earth.block:block_palette run setblock ~ ~ ~ air

# execute store result score @s earth.block.break_pos.x run data get entity @s Pos[0]
# execute store result score @s earth.block.break_pos.y run data get entity @s Pos[1]
# execute store result score @s earth.block.break_pos.z run data get entity @s Pos[2]

execute at @e[type=item,sort=nearest,limit=1] run function earth.block:break/item
#execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{Count:1b}},distance=..1] run data modify storage oneiric_tools:string input append value {type:"concatenation",values:[{text:"loot spawn "},{text:'{"score":{"name":"@e[scores={earth.block.clone=1..}]","objective":"earth.block.break_pos.x"}}',interpret:true},{text:" "},{text:'{"score":{"name":"@e[scores={earth.block.clone=1..}]","objective":"earth.block.break_pos.y"}}',interpret:true},{text:" "},{text:'{"score":{"name":"@e[scores={earth.block.clone=1..}]","objective":"earth.block.break_pos.z"}}',interpret:true},{text:" loot "},{text:'{"nbt":"block_id","storage":"earth.block:temp"}',interpret:true}],callback:"function oneiric_tools:run_command"}
#execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{Count:1b}},distance=..1] run data modify storage oneiric_tools:string input append value {type:"concatenation",values:[{text:"execute as @e[type=marker,scores={earth.block.clone=1..}] at @s run loot spawn ~ ~ ~ loot "},{text:'{"nbt":"block_id","storage":"earth.block:temp"}',interpret:true}],callback:"function oneiric_tools:run_command"}
#execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{Count:1b}},distance=..1] run data modify storage oneiric_tools:string input append value {type:"concatenation",values:[{text:"execute as @e[type=marker,scores={earth.block.clone=1..}] at @s run loot spawn "},{text:'{"score":{"name":"@e[scores={earth.block.clone=1..}]","objective":"earth.block.break_pos.x"}}',interpret:true},{text:" "},{text:'{"score":{"name":"@e[scores={earth.block.clone=1..}]","objective":"earth.block.break_pos.y"}}',interpret:true},{text:" "},{text:'{"score":{"name":"@e[scores={earth.block.clone=1..}]","objective":"earth.block.break_pos.z"}}',interpret:true},{text:" "},{text:'{"nbt":"block_id","storage":"earth.block:temp"}',interpret:true}],callback:"function oneiric_tools:run_command"}

kill @e[tag=earth.block.interaction,sort=nearest,limit=1,distance=..1.5]
kill @e[type=item_display,sort=nearest,limit=1,tag=earth.block_display]
kill @e[type=marker,sort=nearest,limit=1,tag=earth.block_marker]