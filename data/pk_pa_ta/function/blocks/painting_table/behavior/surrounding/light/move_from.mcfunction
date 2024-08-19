#> pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from
#
# @args
#   $move_from_direction: Current direction of the custom block's body entities
#
# @context a painting table controller at @s

# Mark controller
$tag @s remove pk.custom_block.light.$(move_from_direction)

# Store move_from args
$data modify storage pk:common temp.move_from_direction set value $(move_from_direction)

# Prepare move_to args
data remove storage pk:common temp.light_move_to_args
#   facing
execute if score @s pk.custom_block.facing matches 0 run data modify storage pk:common temp.light_move_to_args.subpath set value "/facing_north"
execute if score @s pk.custom_block.facing matches 1 run data modify storage pk:common temp.light_move_to_args.subpath set value "/facing_east"
execute if score @s pk.custom_block.facing matches 2 run data modify storage pk:common temp.light_move_to_args.subpath set value "/facing_south"
execute if score @s pk.custom_block.facing matches 3 run data modify storage pk:common temp.light_move_to_args.subpath set value "/facing_west"
#   move_to_direction
function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_to/set_direction

# Set new location
execute if data storage pk:common temp.light_move_to_args.move_to_direction run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_to/switch with storage pk:common temp.light_move_to_args