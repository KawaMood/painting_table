#> pk_pa_ta:events/player/any_block_use/painting_table
#
# @within advancement pk_pa_ta:events/any_block_use/painting_table

advancement revoke @s only pk_pa_ta:events/any_block_use/painting_table

# Open container delay
# Notably solve issues like Paper (> 26.1 build #17)
scoreboard players set $settings.open_container_delay pk.temp 0
execute store result score $settings.open_container_delay pk.temp run data get storage pk:pa_ta settings.open_container_delay
execute unless score $settings.open_container_delay pk.temp matches ..0 run return run function pk_pa_ta:events/player/any_block_use/painting_table/open_container_delay/set_cooldown with storage pk:pa_ta settings

# Run instantly
function pk_pa_ta:events/player/any_block_use/painting_table/trigger