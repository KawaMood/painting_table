#> pk_pa_ta:blocks/painting_table/behavior/_tick
#
# Main tick for painting table's controller
#
# @context the controller of a painting table at @s

# Prepare scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Environment
#   Break
execute unless block ~ ~ ~ barrel run function pk_pa_ta:blocks/painting_table/actions/break/from_controller
#   Remove hopper minecarts being at range to draw items from the container block
execute positioned ~-0.5 ~-1.01 ~-0.5 as @e[type=hopper_minecart,dy=1.01] at @s run function pk_pa_ta:blocks/painting_table/behavior/surrounding/entities/remove_dangerous_hopper_minecart

# In use
execute if entity @s[tag=pk.custom_block.in_use] run function pk_pa_ta:blocks/painting_table/actions/use/_tick