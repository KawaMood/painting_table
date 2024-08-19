#> pk_pa_ta:blocks/painting_table/actions/use/helpers/update_inputs_from_craft
#
# @require score $crafted_output_count pk.temp
#   The count of items that have been crafted

# Update ingredients count
#   Red dye
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{Slot:10b}].count
scoreboard players operation $ingredient_count pk.temp -= $crafted_output_count pk.temp
execute if score $ingredient_count pk.temp matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].count int 1 run scoreboard players get $ingredient_count pk.temp
execute if score $ingredient_count pk.temp matches ..0 run data remove block ~ ~ ~ Items[{Slot:10b}] 
#   Yellow dye
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{Slot:11b}].count
scoreboard players operation $ingredient_count pk.temp -= $crafted_output_count pk.temp
execute if score $ingredient_count pk.temp matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].count int 1 run scoreboard players get $ingredient_count pk.temp
execute if score $ingredient_count pk.temp matches ..0 run data remove block ~ ~ ~ Items[{Slot:11b}] 
#   Blue dye
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{Slot:12b}].count
scoreboard players operation $ingredient_count pk.temp -= $crafted_output_count pk.temp
execute if score $ingredient_count pk.temp matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].count int 1 run scoreboard players get $ingredient_count pk.temp
execute if score $ingredient_count pk.temp matches ..0 run data remove block ~ ~ ~ Items[{Slot:12b}] 
#   Quartz block
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{Slot:13b}].count
scoreboard players operation $ingredient_count pk.temp -= $crafted_output_count pk.temp
execute if score $ingredient_count pk.temp matches 1.. store result block ~ ~ ~ Items[{Slot:13b}].count int 1 run scoreboard players get $ingredient_count pk.temp
execute if score $ingredient_count pk.temp matches ..0 run data remove block ~ ~ ~ Items[{Slot:13b}]