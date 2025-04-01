#> pk_pa_ta:_main/update/from_v2/painting_tables/5

# Logs
tellraw @a[tag=pk.update_from_v2,limit=1] [{text: "Updated \"painting table\" at [",color: "gray"},{nbt:"update.new_entry.location.x",storage:"pk:common"},{text: ","},{nbt:"update.new_entry.location.y",storage:"pk:common"},{text: ","},{nbt:"update.new_entry.location.z",storage:"pk:common"},{text: "] in "},{nbt:"update.new_entry.location.dimension",storage:"pk:common"}]

# Replace entities and block
execute store result score $temp pk.custom_block.component.id run data get storage pk:common update.new_entry.id
kill @e[type=#pk_pa_ta:custom_block_components,tag=pk.pa_ta.painting_table,predicate=pk_pa_ta:scores/custom_block/component_id_match,distance=..2]
data modify storage pk:common temp.painting_table set from storage pk:common update.new_entry
function pk_pa_ta:blocks/painting_table/actions/place/_run

# Remove forceload
execute if score $update.is_forceloaded pk.temp matches 0 run forceload remove ~ ~

# Recursive call
data remove storage pk:common update.painting_tables[-1]
execute unless data storage pk:common update.painting_tables[-1] run function pk_pa_ta:_main/update/from_v2/stop
execute if data storage pk:common update.painting_tables[-1] run function pk_pa_ta:_main/update/from_v2/painting_tables/1