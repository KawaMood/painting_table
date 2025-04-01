#> pk_pa_ta:_main/recreate/start
#
# @input args
#   feature: string
#       Feature to recreate

# @return check if an recreateing process is already running
execute if score $recreate pk.value matches 1 run return run tellraw @s {text: "A recreating process is already running",color:"red"}

# Prepare the args depending on features to recreate
data remove storage pk:common recreate.feature_args
$data modify storage pk:common recreate.feature_args.feature_id set value "$(feature)"
#   Painting tables
execute if data storage pk:common recreate.feature_args{feature_id:"painting_table"} run data modify storage pk:common recreate.feature_args merge value {feature_storage_path:"pk:pa_ta database.blocks.painting_tables",callback:"function pk_pa_ta:_main/recreate/stop"}

# @return if feature not found
execute unless data storage pk:common recreate.feature_args.feature_storage_path run return run tellraw @s {text: "This feature doesn't exist",color:"red"}

# Set recreateing process score
scoreboard players set $recreate pk.value 1

# Mark player
tag @s add pk.recreate

# Recreate features
execute if data storage pk:common recreate.feature_args.feature_storage_path run function pk_pa_ta:_main/recreate/feature/start with storage pk:common recreate.feature_args