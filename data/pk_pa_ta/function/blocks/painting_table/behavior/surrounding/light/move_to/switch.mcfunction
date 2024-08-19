#> function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_to/_switch
#
# @args
#   $move_to_direction: Direction of the body entities to move on
#   $subpath: Subpath for the move_to function
#   $location: New location (relative coordinates)
#
# @context a custom block's controller at @s

# Logs
$execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Updated light to $(move_to_direction)","color":"gray"}

# Mark controller
$tag @s add pk.custom_block.light.$(move_to_direction)

# Relocate body parts
$tp @e[type=#pk_pa_ta:custom_block_components,tag=pk.custom_block.body_part,predicate=pk_pa_ta:scores/custom_block/component_id_match,distance=..10] $(location)

# Update body parts
$execute as @e[type=#pk_pa_ta:custom_block_components,tag=pk.custom_block.body_part,predicate=pk_pa_ta:scores/custom_block/component_id_match,distance=..10] run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_to/$(move_to_direction)$(subpath)