#> pk_pa_ta:blocks/painting_table/actions/use/triggers/inputs_changed

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {text:"Inputs changed in painting table",color:"gray"}

# @return remove output if all necessary inputs aren't set
execute if score $inputs_count pk.temp matches ..4 run return run data remove block ~ ~ ~ Items[{Slot:16b}]

# @return update if output already set
execute if data block ~ ~ ~ Items[{Slot:16b}] store result block ~ ~ ~ Items[{Slot:16b}].count int 1 run return run scoreboard players get $min_ingredient_count pk.temp

# Set output
function pk_pa_ta:blocks/painting_table/actions/use/helpers/set_output