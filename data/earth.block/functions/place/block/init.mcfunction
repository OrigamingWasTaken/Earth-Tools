# Summon item display
execute summon item_display at @s run function earth.block:place/block/item_display
execute summon marker at @s run function earth.block:place/block/marker

# Check if block should have click detection
execute if data storage smithed.custom_block:main {blockApi:{__data:{Items:[{Slot:0b,tag:{Earth:{Click:1b}}}]}}} positioned ~ ~-0.5 ~ run function earth.block:place/block/interaction

#Executes after setting up the properties and removing the furnace (this sets the block dynamically)

#Summon the block on solid ground so it can be cloned
setblock 2999999 319 2999999 air
execute in overworld positioned 2999999 319 2999999 align y summon minecraft:falling_block run data modify entity @s BlockState.Name set from storage smithed.custom_block:main blockApi.__data.Items[{Slot:0b}].id

schedule function earth.block:schedule 2t