#> pk_pa_ta:blocks/painting_table/actions/use/conditions/inputs_changed

data modify storage pk:common temp.compare set from storage pk:common temp.inputs
execute store success score $inputs_changed pk.temp run data modify storage pk:common temp.compare set from storage pk:common temp.prev_inputs