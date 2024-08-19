#> pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_to/_set_direction

# Top
execute unless data storage pk:common temp{move_from_direction:"top"} positioned ~ ~1 ~ unless predicate pk_pa_ta:scores/location/light/0 run return run data modify storage pk:common temp.light_move_to_args merge value {move_to_direction:"top",location:"~ ~1 ~",subpath:""}
# Bottom
execute unless data storage pk:common temp{move_from_direction:"bottom"} positioned ~ ~-1 ~ unless predicate pk_pa_ta:scores/location/light/0 run return run data modify storage pk:common temp.light_move_to_args merge value {move_to_direction:"bottom",location:"~ ~-1 ~",subpath:""}
# East
execute unless data storage pk:common temp{move_from_direction:"east"} positioned ~1 ~ ~ unless predicate pk_pa_ta:scores/location/light/0 run return run data modify storage pk:common temp.light_move_to_args merge value {move_to_direction:"east",location:"~1 ~ ~"}
# West
execute unless data storage pk:common temp{move_from_direction:"west"} positioned ~-1 ~ ~ unless predicate pk_pa_ta:scores/location/light/0 run return run data modify storage pk:common temp.light_move_to_args merge value {move_to_direction:"west",location:"~-1 ~ ~"}
# South
execute unless data storage pk:common temp{move_from_direction:"south"} positioned ~ ~ ~1 unless predicate pk_pa_ta:scores/location/light/0 run return run data modify storage pk:common temp.light_move_to_args merge value {move_to_direction:"south",location:"~ ~ ~1"}
# North
execute unless data storage pk:common temp{move_from_direction:"north"} positioned ~ ~ ~-1 unless predicate pk_pa_ta:scores/location/light/0 run return run data modify storage pk:common temp.light_move_to_args merge value {move_to_direction:"north",location:"~ ~ ~-1"}