#> pk_pa_ta:blocks/painting_table/actions/break/should_loot_itself
#
# Check if the painting table existed enough time to be looted when removed 
# Used for protected-area plugins compatibility
#
# @input temp.painting_table: PaintingTable
#       Data of the painting table the clicked interaction belongs to

# @return fail if broken by a player who is in creative mode
execute if entity @a[tag=pk.current.player,gamemode=creative,distance=..65,limit=1] run return fail

# Store the created_at_gametime from the painting table data, or set it to 0 if the painting table was created before 3.0.0
scoreboard players set $created_at_gametime pk.temp 0
execute store result score $created_at_gametime pk.temp run data get storage pk:common temp.painting_table.created_at_gametime 1

# Check if should loot
execute unless score $pk.pa_ta.settings.lootable_delay pk.value matches 0.. run scoreboard players set $pk.pa_ta.settings.lootable_delay pk.value 0
execute store result score $age pk.temp run time query gametime
scoreboard players operation $age pk.temp -= $created_at_gametime pk.temp

# @return fail if lootable delay is greater than the current painting table's age
execute if score $pk.pa_ta.settings.lootable_delay pk.value > $age pk.temp run return fail

# Loot
function pk_pa_ta:items/painting_table/loot with storage pk:common temp.painting_table