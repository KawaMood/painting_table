# Store block placer data
data modify storage pk:common temp.block_placer_entity set from entity @s
kill @s

# Try to place the painting_table as the player
execute as @p[tag=pk.current.player] run function pk_pa_ta:blocks/painting_table/actions/create/from_placer_entity