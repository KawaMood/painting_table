#> pk_pa_ta:blocks/painting_table/actions/use/triggers/set_output

# Logs
execute if score $pk.pa_ta.logs pk.value matches 1 run tellraw @a[tag=pk.dev] {"text":"Set output in painting table","color":"gray"}

# Prepare output item in storage
data modify storage pk:common temp.output set value {id:"minecraft:player_head",count:1,Slot:16b,components:{"minecraft:custom_data":{pk_data:{output:1b,from:"painting_table"}},"minecraft:profile":{properties:[{name:"textures"}]}}}
#   Set textures' value from writable book
execute if data storage pk:common temp.inputs[{id:"minecraft:writable_book"}] run data modify storage pk:common temp.output.components."minecraft:profile".properties[0].value set from block ~ ~ ~ Items[{Slot:14b}].components."minecraft:writable_book_content".pages[0].raw
#   Set textures' value from written book
execute if data storage pk:common temp.inputs[{id:"minecraft:written_book"}] run function pk_pa_ta:blocks/painting_table/actions/use/helpers/set_profile_from_written_book_content with block ~ ~ ~ Items[{Slot:14b}].components."minecraft:written_book_content".pages[0]
#   Set count from minimal ingredient count
execute store result storage pk:common temp.output.count int 1 run scoreboard players get $min_ingredient_count pk.temp

# Set output item in container
data modify block ~ ~ ~ Items append from storage pk:common temp.output