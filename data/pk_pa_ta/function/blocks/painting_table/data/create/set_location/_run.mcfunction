#> pk_pa_ta:blocks/painting_table/data/create/set_location/_run
#
# Set location
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new painting table
#
# @writes storage pk:common output
#   painting table: PaintingTable
#       New custom block data

# Try to set from args
data modify storage pk:common output.painting_table.location.x set from storage pk:common constructor_args.location.x
data modify storage pk:common output.painting_table.location.y set from storage pk:common constructor_args.location.y
data modify storage pk:common output.painting_table.location.z set from storage pk:common constructor_args.location.z
data modify storage pk:common output.painting_table.location.dimension set from storage pk:common constructor_args.location.dimension
#   @return 1 if all data are set
execute if data storage pk:common output.painting_table.location.x if data storage pk:common output.painting_table.location.y if data storage pk:common output.painting_table.location.z if data storage pk:common output.painting_table.location.dimension run return 1

# Set from current location context
execute summon marker run function pk_pa_ta:blocks/painting_table/data/create/set_location/coordinates_from_context
execute positioned -30000000 0 1600 summon piglin_brute run function pk_pa_ta:blocks/painting_table/data/create/set_location/dimension_from_context