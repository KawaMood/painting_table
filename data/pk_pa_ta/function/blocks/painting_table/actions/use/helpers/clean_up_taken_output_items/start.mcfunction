#> pk_pa_ta:blocks/painting_table/actions/use/helpers/clean_up_taken_output_items/start
#
# Clean up output items from the cursor and/or all container slots (0-35)

# @return cursor slot
execute if items entity @s player.cursor *[custom_data~{pk_data:{output:1b,from:"painting_table"}}] run return run item modify entity @s player.cursor [{function:"minecraft:set_components","components":{"!minecraft:custom_data":{}}}]

# Container slot (0-35)
scoreboard players set $slot pk.temp 0
data modify storage pk:common args.slot set value 0
function pk_pa_ta:blocks/painting_table/actions/use/helpers/clean_up_taken_output_items/recursive with storage pk:common args