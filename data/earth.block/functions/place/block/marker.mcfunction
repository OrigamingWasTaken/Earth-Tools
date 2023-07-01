data modify entity @s data.block_id set from storage smithed.custom_block:main blockApi.id
data modify entity @s data.smithed set from storage smithed.custom_block:main blockApi
tag @s add earth.block_marker
tag @s add earth.block.new
function earth.block:place/block/custom