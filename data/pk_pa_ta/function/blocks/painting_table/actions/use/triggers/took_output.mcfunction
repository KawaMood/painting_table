#> pk_pa_ta:blocks/painting_table/actions/use/triggers/took_output
#
# @context the user at the used painting table

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Took/splited output from painting table","color":"gray"}

# Set score
execute store result score $crafted_output_count pk.temp run clear @s *[custom_data~{pk_data:{output:1b,from:"painting_table"}}] 0

# Clean up outputs items
function pk_pa_ta:blocks/painting_table/actions/use/helpers/clean_up_taken_output_items/start

# Update inputs
function pk_pa_ta:blocks/painting_table/actions/use/helpers/update_inputs_from_craft

# Animations
function pk_pa_ta:blocks/painting_table/actions/use/helpers/craft_animations