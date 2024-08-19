#> pk_pa_ta:events/player/placed_block/painting_table
#
# Rewarded from advancement pk_pa_ta:events/placed_block/painting_table

# Revoke advancement
advancement revoke @s only pk_pa_ta:events/placed_block/painting_table

# Mark the current player
tag @s add pk.current.player

# Store item data the player used to place the Pot'al and tell the process it has been placed by a player
data modify storage pk:common temp.item set from entity @s SelectedItem

# Search the placed block
data modify storage pk:common package.search_block.args set value {distance:10,block:"#pk_pa_ta:player_heads",nbt:{components:{"minecraft:custom_data":{pk_data:{custom_block:1b,id:"painting_table",from:"painting_table"}}}},callback:"function pk_pa_ta:blocks/painting_table/actions/create/from_placeholder",stop_at_first:true}
function pk_pa_ta:packages/search_block/start with storage pk:common package.search_block.args

# Unmark the current player
tag @s remove pk.current.player