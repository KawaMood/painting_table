#> pk_pa_ta:items/painting_table/give
#
# Give (a) painting table(s)
#
# @input args
#   count: int

function pk_pa_ta:items/painting_table/attributes
data modify storage pk:common package.dynamic_command.args set from storage pk:common temp.attributes
$data modify storage pk:common package.dynamic_command.args.count set value $(count)
function pk_pa_ta:packages/dynamic_item/give with storage pk:common package.dynamic_command.args