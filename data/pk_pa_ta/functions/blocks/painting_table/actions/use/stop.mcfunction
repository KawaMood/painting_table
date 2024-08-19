#> pk_pa_ta:blocks/painting_table/use/stop
#
# @context a painting table's controller at @s
# User has the "pk.current.player" tag

# Set score
scoreboard players set $use.stop pk.temp 1

# Unmark as in use
tag @s remove pk.custom_block.in_use

# Give back items to player
execute as @a[tag=pk.current.player,limit=1] run function pk_pa_ta:blocks/painting_table/actions/use/helpers/give_back_inputs/start

# Reset the block
function pk_pa_ta:blocks/painting_table/blocks/create

# Unlock
execute align xyz run kill @e[type=interaction,tag=pk.pa_ta.block.painting_table.lock,predicate=pk_pa_ta:scores/custom_block/component_id_match,limit=1,dx=0]

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Stop using painting table","color":"gray"}