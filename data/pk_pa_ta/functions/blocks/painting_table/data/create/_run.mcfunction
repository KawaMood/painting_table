#> pk_pa_ta:blocks/painting_table/data/create/_run
#
# Create painting table's data
#
# @input constructor_args: object
#       Information to preserve in the new painting table
#
# @output storage pk:common output
#   painting_table: PaintingTable
#       New custom block data
#
# @writes storage pk:common constructor_args: null

# Initialize data with default values
data modify storage pk:common output.painting_table set value {item:{}}

# Set data
#   id
function pk_pa_ta:blocks/painting_table/data/create/set_id
#   owner (if set to 0b in args, will skip)
execute unless data storage pk:common constructor_args{owner:0b} run function pk_pa_ta:blocks/painting_table/data/create/set_owner
#   location
function pk_pa_ta:blocks/painting_table/data/create/set_location/_run
#   facing
function pk_pa_ta:blocks/painting_table/data/create/set_facing
#   created_at_gametime
execute store result storage pk:common output.painting_table.created_at_gametime int 1 run time query gametime

# Clear constructor args
data remove storage pk:common constructor_args

# Update database
data modify storage pk:pa_ta database.blocks.painting_tables append from storage pk:common output.painting_table