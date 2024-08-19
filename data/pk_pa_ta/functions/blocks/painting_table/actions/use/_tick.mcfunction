#> pk_pa_ta:blocks/painting_table/use/tick
#
# @context as the used painting table's controller at @s

# Prepare scores
scoreboard players operation $temp pk.custom_block.interaction.id = @s pk.custom_block.interaction.id
scoreboard players set $use.stop pk.temp 0

# Mark the current player
tag @a[predicate=pk_pa_ta:scores/custom_block/interaction_id_match,limit=1,distance=..68] add pk.current.player

# Stop ticking if the barrel is closed or if the user is too far or logged out
execute unless block ~ ~ ~ barrel[open=true] run function pk_pa_ta:blocks/painting_table/actions/use/stop
execute if score $use.stop pk.temp matches 0 unless entity @a[tag=pk.current.player,limit=1] run function pk_pa_ta:blocks/painting_table/actions/use/stop

# Watch actions in GUI
execute if score $use.stop pk.temp matches 0 run function pk_pa_ta:blocks/painting_table/actions/use/watch

# Unmark the current player
tag @a[tag=pk.current.player,limit=1] remove pk.current.player