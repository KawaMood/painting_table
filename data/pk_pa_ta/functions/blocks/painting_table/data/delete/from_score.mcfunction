#> pk_pa_ta:blocks/painting_table/data/delete/from_score
#
# @input score $temp pk.custom_block
#   component.id: Id of the searched painting table data

data modify storage pk:common package.dynamic_command.args set value {p1:"data remove storage pk:pa_ta database.blocks.painting_tables[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_pa_ta:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args