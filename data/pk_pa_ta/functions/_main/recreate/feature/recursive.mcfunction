#> pk_pa_ta:_main/recreate/feature/recursive
#
# Recursive call

data remove storage pk:common recreate.destructive.list[-1]
scoreboard players remove $recreate.list.length pk.temp 1

# @return run the callback function if the list is now empty
execute if score $recreate.list.length pk.temp matches ..0 unless data storage pk:common recreate.feature_args{callback:""} run return run function pk_pa_ta:_main/recreate/callback with storage pk:common recreate.feature_args

# Continue
execute if score $recreate.list.length pk.temp matches 1.. run function pk_pa_ta:_main/recreate/feature/1