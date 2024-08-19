#> pk_pa_ta:blocks/painting_table/actions/use/helpers/give_back_inputs/recursive
#
# @context as the user at the used painting table

# Loot item
function pk_pa_ta:packages/dynamic_item/give with storage pk:common temp.destructive_items[-1]

# Recursive call
data remove storage pk:common temp.destructive_items[-1]
execute if data storage pk:common temp.destructive_items[-1] run function pk_pa_ta:blocks/painting_table/actions/use/helpers/give_back_inputs/recursive