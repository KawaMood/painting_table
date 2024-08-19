#> pk_pa_ta:events/player/any_block_use/painting_table
#
# @within advancement pk_pa_ta:events/any_block_use/painting_table

advancement revoke @s only pk_pa_ta:events/any_block_use/painting_table

# Increment and set interaction.id score
scoreboard players add $next pk.custom_block.interaction.id 1
scoreboard players operation @s pk.custom_block.interaction.id = $next pk.custom_block.interaction.id

# Mark the current player
tag @s add pk.current.player

# Search the placed block
data modify storage pk:common package.search_block.args set value {distance:10,block:"minecraft:barrel[open=true]",nbt:{Items:[{components:{"minecraft:custom_data":{pk_data:{custom_block:1b,from:"painting_table",gui:1b,in_use:0b,id:"painting_table"}}}}]},callback:"execute as @e[type=marker,tag=pk.pa_ta.block.painting_table.controller,dx=0,limit=1] at @s run function pk_pa_ta:blocks/painting_table/actions/use/start",stop_at_first:true}
function pk_pa_ta:packages/search_block/start with storage pk:common package.search_block.args

# Unmark the current player
tag @s remove pk.current.player