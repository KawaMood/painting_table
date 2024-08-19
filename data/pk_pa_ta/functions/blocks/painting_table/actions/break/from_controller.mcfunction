#> pk_pa_ta:blocks/painting_table/actions/break/from_controller
#
# Break painting table
#
# @writes temp.painting_table: PaintingTable
#       Data of the painting table
#
# @context painting table controller at @s

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search painting table data of the current controller
function pk_pa_ta:blocks/painting_table/data/search/from_score

# Check if the painting table has been removed too quickly
#   Used for Worldguard compatibility
function pk_pa_ta:blocks/painting_table/actions/break/should_loot_itself

# Kill dropped GUI items and potential barrel
execute align xyz run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pk_data:{gui:1b}}}}},dx=0]
execute unless block ~ ~ ~ barrel align xyz run kill @e[type=item,nbt={Item:{id:"minecraft:barrel",count:1},Age:0s},dx=0,limit=1]

# Delete painting table
function pk_pa_ta:blocks/painting_table/actions/delete/_run