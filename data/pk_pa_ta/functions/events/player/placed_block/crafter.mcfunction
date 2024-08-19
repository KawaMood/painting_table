#> pk_pa_ta:events/player/placed_block/crafter

# Revoke advancement
advancement revoke @s only pk_pa_ta:events/placed_block/crafter

# Check if player placed a dropper next to a painting table
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=pk.pa_ta.block.painting_table.controller,distance=..65] at @s run function pk_pa_ta:blocks/painting_table/behavior/surrounding/blocks/verify_crafters