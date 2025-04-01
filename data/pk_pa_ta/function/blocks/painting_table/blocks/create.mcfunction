#> pk_pa_ta:blocks/painting_table/blocks/create
#
# Place blocks of a painting table
#
# @input storage pk:common temp
#   painting_table: PaintingTable
#       Data of the painting_table
#
# @context location of the painting table

setblock ~ ~ ~ air
setblock ~ ~ ~ barrel[facing=down]{CustomName:{text:"Painting Table"},Items:[{id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:custom_data":{pk_data:{custom_block:1b,id:"painting_table",from:"painting_table",gui:1b,in_use:0b}}},Slot:0b}]}