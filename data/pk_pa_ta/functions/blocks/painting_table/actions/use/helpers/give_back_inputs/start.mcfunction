#> pk_pa_ta:blocks/painting_table/actions/use/helpers/give_back_inputs
#
# @context as the user at the used painting table

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Give back inputs","color":"gray"}

data modify storage pk:common temp.destructive_items set value []
data modify storage pk:common temp.destructive_items append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage pk:common temp.destructive_items append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage pk:common temp.destructive_items append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage pk:common temp.destructive_items append from block ~ ~ ~ Items[{Slot:13b}]
data modify storage pk:common temp.destructive_items append from block ~ ~ ~ Items[{Slot:14b}]
data modify storage pk:common temp.destructive_items[].components.pk_force_item_components set value 1b
data remove storage pk:common temp.destructive_items[].components.pk_force_item_components
execute if data storage pk:common temp.destructive_items[-1] run function pk_pa_ta:blocks/painting_table/actions/use/helpers/give_back_inputs/recursive