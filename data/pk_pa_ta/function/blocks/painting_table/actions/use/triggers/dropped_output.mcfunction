#> pk_pa_ta:blocks/painting_table/actions/use/triggers/dropped_output
#
# @context the user at the used painting table

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Dropped output from painting table","color":"gray"}

# Set score
execute at @s anchored eyes positioned ^ ^ ^ store result score $crafted_output_count pk.temp if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pk_data:{output:1b,from:"painting_table"}}}}},distance=..2]

# Clean up outputs items
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pk_data:{output:1b,from:"painting_table"}}}}},distance=..2] run data remove entity @s Item.components."minecraft:custom_data"

# Update inputs
function pk_pa_ta:blocks/painting_table/actions/use/helpers/update_inputs_from_craft

# Animations
function pk_pa_ta:blocks/painting_table/actions/use/helpers/craft_animations