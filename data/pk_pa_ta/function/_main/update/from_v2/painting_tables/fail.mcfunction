#> pk_pa_ta:_main/update/from_v2/painting_tables/fail

# Warn
tellraw @a[tag=pk.update_from_v2,limit=1] [{text: "Failed to update painting table at\"",color: "red"},{nbt:"update.new_entry.location.x",storage:"pk:common"},{text: ","},{nbt:"update.new_entry.location.y",storage:"pk:common"},{text: ","},{nbt:"update.new_entry.location.z",storage:"pk:common"},{text: "] in "},{nbt:"update.new_entry.location.dimension",storage:"pk:common"}]

# Recursive call
data remove storage pk:common update.painting_tables[-1]
execute unless data storage pk:common update.painting_tables[-1] run function pk_pa_ta:_main/update/from_v2/stop
execute if data storage pk:common update.painting_tables[-1] run function pk_pa_ta:_main/update/from_v2/painting_tables/1