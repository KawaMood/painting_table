#> pk_pa_ta:blocks/painting_table/data/search/from_score
#
# @input score $temp pk.custom_block.component.id
#   Id of the searched painting table data
#
# @output pk:common temp
#   painting_table : PaintingTable
#       The found painting table data

data remove storage pk:common temp.painting_table
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.painting_table set from storage pk:pa_ta database.blocks.painting_tables[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_pa_ta:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args