#> pk_pa_ta:_main/update/from_v2/start

# Check if an update is in progress
execute if score $update pk.value matches 1 run tellraw @s {"text": "Error: Another update is already in progress.","color": "red"}
execute if score $update pk.value matches 1 run return fail

# Mark updater
tag @s add pk.update_from_v2

# Starting the process
tellraw @s [{"text": "Starting to update all features from ","color": "gray"},{"text": "KawaMood's Painting Table (V.2)","color": "aqua","bold": true},{"text": "...","color": "gray"}]
scoreboard players set $update pk.value 1
data remove storage pk:common update

# Update painting tables
data modify storage pk:common update.painting_tables set from storage pk.pa_ta:data Blocks.PaintingTables
execute unless data storage pk:common update.painting_tables[-1] run function pk_pa_ta:_main/update/from_v2/stop
execute if data storage pk:common update.painting_tables[-1] run function pk_pa_ta:_main/update/from_v2/painting_tables/1

# Starting to track villagers who have been altered by V2
scoreboard players set $pk.pa_ta.settings.track_villagers_from_v2 pk.value 1