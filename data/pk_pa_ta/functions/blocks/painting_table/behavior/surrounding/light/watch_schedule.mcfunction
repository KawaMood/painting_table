#> pk_pa_ta:blocks/painting_table/behavior/surrounding/light/watch_schedule

# Set the context
execute as @e[type=marker,tag=pk.pa_ta.block.painting_table.controller] at @s run function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/watch

# Recursive call
schedule function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/watch_schedule 1s