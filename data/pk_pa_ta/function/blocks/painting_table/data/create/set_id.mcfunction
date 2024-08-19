#> pk_pa_ta:blocks/painting_table/data/create/set_id
#
# Set id
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new painting table
#
# @writes storage pk:common output
#   painting table: PaintingTable
#       New custom block data

# Try to set from constructor args
data modify storage pk:common output.painting_table.id set from storage pk:common constructor_args.id
#   @return 1 if id has been correctly set
execute if data storage pk:common output.painting_table.id run return 1

# Set id from next id
scoreboard players add $next pk.custom_block.component.id 1
execute store result storage pk:common output.painting_table.id int 1 run scoreboard players get $next pk.custom_block.component.id