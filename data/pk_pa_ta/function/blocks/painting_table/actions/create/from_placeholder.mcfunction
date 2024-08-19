#> pk_pa_ta:blocks/painting_table/actions/create/from_placeholder
#
# Place a block from a placeholder placement from a player
#
# @context player who placed the placeholder of the custom block, at the placeholder

# Create data
#   Set painting_table data in: storage pk:common output.painting_table
function pk_pa_ta:blocks/painting_table/data/create/_run

# Place blocks and entities from data
data modify storage pk:common temp.painting_table set from storage pk:common output.painting_table
function pk_pa_ta:blocks/painting_table/actions/place/_run