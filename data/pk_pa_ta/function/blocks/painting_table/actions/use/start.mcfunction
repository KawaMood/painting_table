#> pk_pa_ta:blocks/painting_table/use/start
#
# @context a painting table's controller at @s
# User has the "pk.current.player" tag

# Set scores
scoreboard players operation @s pk.custom_block.interaction.id = $next pk.custom_block.interaction.id
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Mark as in use
tag @s add pk.custom_block.in_use

# Lock
function pk_pa_ta:blocks/painting_table/entities/lock/create/_run

# Build the GUI
data modify block ~ ~ ~ Items set from storage pk:pa_ta database.globals.painting_table_gui

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {text:"Start using painting table",color:"gray"}