#> pk_pa_ta:blocks/painting_table/actions/use/triggers/placed_item_in_output_slot
#
# @context the user at the painting table

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Placed an item in output slot in painting table","color":"gray"}

# Give back item to player
data modify storage pk:common temp.item set from block ~ ~ ~ Items[{Slot:16b}]
data modify storage pk:common temp.item.components.pk_force_item_components set value 1b
data remove storage pk:common temp.item.components.pk_force_item_components
function pk_pa_ta:packages/dynamic_item/give with storage pk:common temp.item

# Remove item from container
item replace block ~ ~ ~ container.16 with air