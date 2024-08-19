#> pk_pa_ta:_main/update/from_v2/stop

# Reset score
scoreboard players reset $update pk.value

# Logs
tellraw @a[tag=pk.update_from_v2,limit=1] [{"text": "Updated all painting tables from ","color": "yellow"},{"text": "KawaMood's Painting Table (V.2)","color": "aqua","bold": true},{"text": " successfully."}]

# Unmark updater
tag @a[tag=pk.update_from_v2,limit=1] remove pk.update_from_v2