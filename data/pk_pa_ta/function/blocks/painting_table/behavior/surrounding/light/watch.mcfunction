#> pk_pa_ta:blocks/painting_table/behavior/surrounding/light/watch
#
# @context a custom block's controller at @s

# Top
execute if entity @s[tag=pk.custom_block.light.top] positioned ~ ~1 ~ if predicate pk_pa_ta:scores/location/light/0 at @s unless predicate pk_pa_ta:scores/location/light/0_surrounded run return run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from {move_from_direction:"top"}
# Bottom
execute if entity @s[tag=pk.custom_block.light.bottom] positioned ~ ~-1 ~ if predicate pk_pa_ta:scores/location/light/0 at @s unless predicate pk_pa_ta:scores/location/light/0_surrounded run return run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from {move_from_direction:"bottom"}
# East
execute if entity @s[tag=pk.custom_block.light.east] positioned ~1 ~ ~ if predicate pk_pa_ta:scores/location/light/0 at @s unless predicate pk_pa_ta:scores/location/light/0_surrounded run return run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from {move_from_direction:"east"}
# West
execute if entity @s[tag=pk.custom_block.light.west] positioned ~-1 ~ ~ if predicate pk_pa_ta:scores/location/light/0 at @s unless predicate pk_pa_ta:scores/location/light/0_surrounded run return run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from {move_from_direction:"west"}
# South
execute if entity @s[tag=pk.custom_block.light.south] positioned ~ ~ ~1 if predicate pk_pa_ta:scores/location/light/0 at @s unless predicate pk_pa_ta:scores/location/light/0_surrounded run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from {move_from_direction:"south"}
# North
execute if entity @s[tag=pk.custom_block.light.north] positioned ~ ~ ~-1 if predicate pk_pa_ta:scores/location/light/0 at @s unless predicate pk_pa_ta:scores/location/light/0_surrounded run return run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_from {move_from_direction:"north"}