# Set item display properties
data merge entity @s {Tags:["earth.block_display"],item:{id:"minecraft:furnace",Count:1b},transformation:{scale:[1.005f,1.005f,1.005f]},brightness:{sky:15,block:15}}

# Give correct rotation
execute if block ~ ~ ~ furnace[facing=north] run data modify entity @s Rotation set value [0f,0f]
execute if block ~ ~ ~ furnace[facing=south] run data modify entity @s Rotation set value [180f,0f]
execute if block ~ ~ ~ furnace[facing=east] run data modify entity @s Rotation set value [90f,0f]
execute if block ~ ~ ~ furnace[facing=west] run data modify entity @s Rotation set value [270f,0f]

#Set item texture from custom model data
data modify entity @s item.tag.CustomModelData set from storage smithed.custom_block:main blockApi.__data.Items[{Slot:0b}].tag.Earth.CustomModelData