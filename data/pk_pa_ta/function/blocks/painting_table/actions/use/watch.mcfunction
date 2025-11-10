#> pk_pa_ta:blocks/painting_table/actions/use/watch
#
# @context as the used painting table's controller at @s
# User has the "pk.current.player" tag

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# GUI items
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Check if the player clicked or dropped GUI item
execute store result score $gui_items.total pk.temp run clear @a[tag=pk.current.player,limit=1] *[custom_data~{pk_data:{gui:1b,from:"painting_table"}}]
execute as @a[tag=pk.current.player,limit=1] at @s anchored eyes positioned ^ ^ ^ store result score $gui_items.dropped pk.temp run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table"}}}}},distance=..2]
scoreboard players operation $gui_items.total pk.temp += $gui_items.dropped pk.temp
execute if score $gui_items.total pk.temp matches 1.. as @a[tag=pk.current.player,limit=1] run function pk_pa_ta:blocks/painting_table/actions/use/triggers/altered_fixed_gui_item

# Check if player placed item in output slot
execute if items block ~ ~ ~ container.16 *[!custom_data~{pk_data:{output:1b,from:"painting_table"}}] as @a[tag=pk.current.player,limit=1] run function pk_pa_ta:blocks/painting_table/actions/use/triggers/placed_item_in_output_slot

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Prepare data
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Restore valid inputs from the previous tick
data modify storage pk:common temp.prev_inputs set from entity @s data.pk_data.prev_inputs

# Store current valid inputs
function pk_pa_ta:blocks/painting_table/actions/use/references/store_inputs_from_container

# Flags
#   $inputs_count pk.temp | Inputs count | 5: all inputs have been set
execute store result score $inputs_count pk.temp run data get storage pk:common temp.inputs
#   $inputs_changed pk.temp | Inputs changed since last tick | 0: false | 1: true
function pk_pa_ta:blocks/painting_table/actions/use/references/inputs_changed
#   $min_ingredient_count pk.temp | Minimal ingredient count
function pk_pa_ta:blocks/painting_table/actions/use/references/minimal_ingredient
#   $output_count_in_container pk.temp | Current output count in container
function pk_pa_ta:blocks/painting_table/actions/use/references/output_count_in_container
#   $player_output_count pk.temp | Count of output items in the player inventory
execute store result score $player_output_count pk.temp run clear @a[tag=pk.current.player,limit=1] *[custom_data~{pk_data:{output:1b,from:"painting_table"}}] 0

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Track output
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Player splited or took output
execute if score $player_output_count pk.temp matches 1.. if score $inputs_changed pk.temp matches 0 if score $min_ingredient_count pk.temp > $output_count_in_container pk.temp as @a[tag=pk.current.player,limit=1] run function pk_pa_ta:blocks/painting_table/actions/use/triggers/took_output

# Player dropped output
execute if score $player_output_count pk.temp matches 0 if score $inputs_changed pk.temp matches 0 if score $min_ingredient_count pk.temp > $output_count_in_container pk.temp as @a[tag=pk.current.player,limit=1] run function pk_pa_ta:blocks/painting_table/actions/use/triggers/dropped_output

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Track inputs
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Input changed
execute if score $inputs_changed pk.temp matches 1 run function pk_pa_ta:blocks/painting_table/actions/use/triggers/inputs_changed

# Store prev valid inputs for the next tick
data modify entity @s data.pk_data.prev_inputs set from storage pk:common temp.inputs