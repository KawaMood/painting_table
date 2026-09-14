# Increment and set interaction.id score
scoreboard players add $next pk.custom_block.interaction.id 1
scoreboard players operation @s pk.custom_block.interaction.id = $next pk.custom_block.interaction.id

# Mark the current player
tag @s add pk.current.player

# Search the placed block
execute as @e[type=marker,tag=pk.pa_ta.block.painting_table.controller,distance=..20] at @s align xyz if block ~ ~ ~ minecraft:barrel[open=true] if items block ~ ~ ~ container.* *[custom_data~{pk_data:{custom_block:1b,from:"painting_table",gui:1b,in_use:0b,id:"painting_table"}}] run function pk_pa_ta:blocks/painting_table/actions/use/start

# Unmark the current player
tag @s remove pk.current.player