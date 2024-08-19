#> pk_pa_ta:blocks/painting_table/data/create/set_owner
#
# Set owner
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new painting table
#
# @writes storage pk:common output
#   painting table: PaintingTable
#       New custom block data

# Try to set from args
data modify storage pk:common output.painting_table.owner set from storage pk:common constructor_args.owner
#   @return 1 if the data is set
execute if data storage pk:common output.painting_table.owner run return 1

# Try to set from current entity context's UUID
execute if entity @s run data modify storage pk:common output.painting_table.owner set from entity @s UUID
#   @return 1 if the data is set
execute if data storage pk:common output.painting_table.owner run return 1