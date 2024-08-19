#> pk_pa_ta:blocks/painting_table/actions/use/triggers/altered_fixed_gui_item
#
# Restore GUI items
#
# @context the user at the used painting table

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Altered GUI of painting table","color":"gray"}

# Check if the player swapped the GUI item with another item and give it back if it is the case
data modify storage pk:common temp.retained_items set from block ~ ~ ~ Items
#   Remove GUI items
data remove storage pk:common temp.retained_items[{components:{"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table"}}}}]
#   Remove potential items from input and output slots
data remove storage pk:common temp.retained_items[{Slot:10b}]
data remove storage pk:common temp.retained_items[{Slot:11b}]
data remove storage pk:common temp.retained_items[{Slot:12b}]
data remove storage pk:common temp.retained_items[{Slot:13b}]
data remove storage pk:common temp.retained_items[{Slot:14b}]
data remove storage pk:common temp.retained_items[{Slot:16b}]

# Restore GUI
data modify block ~ ~ ~ Items append from storage pk:pa_ta database.globals.painting_table_gui[]

# @return if player didn't put another item
execute unless data storage pk:common temp.retained_items[-1] run return 1

# Give item back on player's cursor
data modify storage pk:common temp.args set from storage pk:common temp.retained_items[-1]
execute unless data storage pk:common temp.args.components run data modify storage pk:common temp.args.components set value {}
data modify storage pk:common temp.args.slot set value "player.cursor"
function pk_pa_ta:packages/dynamic_item/replace with storage pk:common temp.args