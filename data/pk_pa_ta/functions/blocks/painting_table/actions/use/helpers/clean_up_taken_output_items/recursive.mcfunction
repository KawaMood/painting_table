#> pk_pa_ta:blocks/painting_table/actions/use/helpers/clean_up_taken_output_items/recursive
#
# @args
#   $slot: Container slot
#
# Try to clean up item from the passed slot, and stop the process if found

# @return try to clean up item
$execute if items entity @s container.$(slot) *[custom_data~{pk_data:{output:1b,from:"painting_table"}}] run return run item modify entity @s container.$(slot) [{function:"minecraft:set_components","components":{"!minecraft:custom_data":{}}}]

# Recursive call
scoreboard players add $slot pk.temp 1
execute store result storage pk:common args.slot int 1 run scoreboard players get $slot pk.temp
execute if score $slot pk.temp matches ..35 run function pk_pa_ta:blocks/painting_table/actions/use/helpers/clean_up_taken_output_items/recursive with storage pk:common args