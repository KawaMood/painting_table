#> pk_pa_ta:blocks/painting_table/actions/use/flags/minimal_ingredient
#
# Search what ingredient has the minimal count (among dyes and blocks of quartz)

# Reset score
scoreboard players set $min_ingredient_count pk.temp 0

# @return 0 if it misses an input
execute unless score $inputs_count pk.temp matches 5 run return 0

execute store result score $min_ingredient_count pk.temp run data get storage pk:common temp.inputs[{id:"minecraft:red_dye"}].count
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{id:"minecraft:yellow_dye"}].count
scoreboard players operation $min_ingredient_count pk.temp < $ingredient_count pk.temp
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{id:"minecraft:blue_dye"}].count
scoreboard players operation $min_ingredient_count pk.temp < $ingredient_count pk.temp
execute store result score $ingredient_count pk.temp run data get storage pk:common temp.inputs[{id:"minecraft:quartz_block"}].count
scoreboard players operation $min_ingredient_count pk.temp < $ingredient_count pk.temp