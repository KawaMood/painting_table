#> pk_pa_ta:items/painting_table/loot

function pk_pa_ta:items/painting_table/attributes
data modify storage pk:common package.dynamic_item.args set value {apply_random_motion:1b}
data modify storage pk:common package.dynamic_item.args.entity_data.Item set from storage pk:common temp.attributes
function pk_pa_ta:packages/dynamic_item/drop/_run