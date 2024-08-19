#> pk_pa_ta:blocks/painting_table/data/update
#
# Update a painting table in the database
#
# @input pk:common input
#   painting_table: PaintingTable

data modify storage pk:common package.dynamic_command.args set value {p1:"execute if data storage pk:pa_ta database.blocks.painting_tables[{id:",p2:"}] run data modify storage pk:pa_ta database.blocks.painting_tables[{id:",p3:"}] set from storage pk:common temp.painting_table"}
data modify storage pk:common package.dynamic_command.args.v1 set from storage pk:common temp.painting_table.id
data modify storage pk:common package.dynamic_command.args.v2 set from storage pk:common temp.painting_table.id
function pk_pa_ta:packages/dynamic_command/2_vars with storage pk:common package.dynamic_command.args