#> pk_pa_ta:_main/tick
#
# Main tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Blocks
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Painting Tables
execute as @e[type=marker,tag=pk.pa_ta.block.painting_table.controller] at @s run function pk_pa_ta:blocks/painting_table/behavior/_tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Entities
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Check item entities
execute if score $pk.pa_ta.settings.tick_clear_gui_items pk.value matches 1.. as @e[type=item,tag=!pk.pa_ta.once] at @s run function pk_pa_ta:entity/item/once