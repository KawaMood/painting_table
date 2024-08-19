#> pk_pa_ta:_main/update/from_v2/painting_tables/2

execute if score $update.attempt pk.temp matches 4.. run function pk_pa_ta:_main/update/from_v2/painting_tables/fail
$execute unless score $attempt pk.temp matches 4.. in $(dimension) positioned $(x) $(y) $(z) run function pk_pa_ta:_main/update/from_v2/painting_tables/4
scoreboard players add $update.attempt pk.temp 1