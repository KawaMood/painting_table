#> pk_pa_ta:_main/load
#
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
#   pk:common: Used within all KawaMood data packs to store public data and temp manipulation
#   pk:pa_ta: Used to store private data for this data pack

# Initialize common storages (if needed)
execute unless data storage pk:common installed_datapacks[{}] run data modify storage pk:common installed_datapacks set value []
#   Add current data pack into the data packs storage (if needed)
execute unless data storage pk:common installed_datapacks[{id:"painting_table"}] run data modify storage pk:common installed_datapacks append value {name:"Painting Table",id:"painting_table"}

# Initialize specific storage (if needed)
execute unless data storage pk:pa_ta database.blocks.painting_tables[{}] run data modify storage pk:pa_ta database.blocks.painting_tables set value []

# Clear temp
data remove storage pk:common temp

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define public objectives that are common to each KawaMood data pack:
#   pk.temp only concerns temp values that can be cleared at any time without risks.
#   pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no KawaMood data pack anymore.
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy
scoreboard objectives add pk.custom_block.component.id dummy
scoreboard objectives add pk.custom_block.facing dummy

# Define private objectives
#   Used to store gametime to some entities to know when they were loaded last time
scoreboard objectives add pk.pa_ta.gametime dummy

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Globals
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define the global GUI for painting tables
function pk_pa_ta:globals/painting_table_gui/define

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Schedule
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Painting tables body light update
schedule function pk_pa_ta:blocks/painting_table/behavior/surrounding/light/watch_schedule 1s replace

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Update
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define the data pack's version and run (an) updating process(es) (if needed)
function pk_pa_ta:_main/update/_run

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{text: "Loaded ",color: "yellow"},{text:"KawaMood's ",color: "aqua", bold: true},{nbt:"installed_datapacks[{id:\"painting_table\"}].name", storage: "pk:common",color: "aqua", bold: true},{text: " (V.",color: "aqua"},{nbt:"installed_datapacks[{id:\"painting_table\"}].version", storage: "pk:common",color: "aqua"},{text: ")",color: "aqua"},{text: " successfully"}]