#> pk_pa_ta:_main/recreate/stop

# Logs
tellraw @a[tag=pk.recreate] [{"text": "Recreated all \"","color": "yellow"},{"nbt":"recreate.feature_args.feature_id","storage":"pk:common"},{"text": "\" features successfully"}]

# Reset recreateing process score
scoreboard players set $recreate pk.value 0

# Unmark player
tag @a[tag=pk.recreate] remove pk.recreate