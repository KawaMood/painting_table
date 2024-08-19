#> pk_pa_ta:_main/update/from_v2/painting_tables/4

execute if score $update.attempt pk.temp matches 0 store result score $update.is_forceloaded pk.temp run forceload query ~ ~
execute if score $update.attempt pk.temp matches 0 if score $update.is_forceloaded pk.temp matches 0 run forceload add ~ ~

execute unless loaded ~ ~ ~ run return run schedule function pk_pa_ta:_main/update/from_v2/painting_tables/3 1s
function pk_pa_ta:_main/update/from_v2/painting_tables/5 with storage pk:common update.new_entry