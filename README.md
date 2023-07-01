# Earth Tools for Mapmaking

Hi! This library (for Minecraft datapacks) is a sort of extension of Smithed's custom block library.
This lib provides the ability to create custom blocks easily with 1-2 files!

## Features

Here's all the feature of this datapack:
- Register blocks with 1 file
- Custom functions when block is placed (example: You can add particles)
- Block breaking using `/loot` (1 file)
- Face clicking detection (*beta*)

In total, you need 2 files for a fully working custom block.

## How to use

### Placing
You can use the template below and modify it to your liking:
```hs
{
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "minecraft:furnace",
            "functions": [
              {
                "function": "minecraft:set_nbt",
                "tag": "{CustomModelData:<Item texture>,BlockEntityTag:{Items:[{id:\"<Hidden Block>\",Count:1b,tag:{Earth:{Click:<Enable Click detection>,ClickFace:\"<Click Face>\",CustomModelData:<Block texture>},smithed:{block:{id:\"<namespace:block_id>\"}}}}]}}"
              }
            ]
          }
        ]
      }
    ]
  }
```
All the "flags" you can use:
- Item Texture: Custom Model Data used for the block texture when held
- Hidden Block: The block used for the blocks's stats. For example if you want the block to be broken with an axe, then choose `minecraft:planks`
- Enable Click Detection: Wether to summon an interaction entity or not. Set to `1b` if you want to, otherwise just remove it.
- Click Face: The face to detect the click on (top, bottom, north, south, east, west)
- Block Texture: Custom Model Data for when the block is placed.
- namespace:block_id : Pretty self-explanatory, for example: **"magic:magic_altar"**

### Breaking

For the block to drop, you need to add your loot table to the file `earth.block/loot_tables/block_break.json` with a certain format. You can look in the file for the existing blocks (they are from my project, but I left them here for people to see how it work)

## How it works
To dynamically detect breaking, and place the correct hidden block, this lib uses a custom dimension (sorry realms) and falling entities.