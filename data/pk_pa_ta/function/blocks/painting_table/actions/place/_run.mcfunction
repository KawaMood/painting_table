#> pk_pa_ta:blocks/painting_table/actions/place/_run
#
# Place a painting table
#
# @input pk:common temp.painting_table: PaintingTable
#       Data of painting table
#
# @context any at the painting table

# Place
#   blocks
function pk_pa_ta:blocks/painting_table/blocks/create
#   entities
function pk_pa_ta:blocks/painting_table/entities/create_all

# Control surrounding
function pk_pa_ta:blocks/painting_table/behavior/surrounding/blocks/verify_all