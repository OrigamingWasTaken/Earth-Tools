# Checks if the block placed is part of earth realm

execute if data storage smithed.custom_block:main {blockApi:{__data:{Items:[{Slot:0b,tag:{Earth:{}}}]}}} run function earth.block:place/block/init