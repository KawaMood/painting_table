#> pk_pa_ta:_main/update/from_v2/painting_tables/1

# Prepare data
data modify storage pk:common update.old_entry set from storage pk:common update.painting_tables[-1]
data modify storage pk:common update.new_entry set value {}

# Create new entry
#   id
data modify storage pk:common update.new_entry.id set from storage pk:common update.old_entry.id
#   facing
data modify storage pk:common update.new_entry.facing set value "north"
#   owner
data modify storage pk:common update.new_entry.owner set from storage pk:common update.old_entry.Placer.UUID
#   location
data modify storage pk:common update.new_entry.location.x set from storage pk:common update.old_entry.x
data modify storage pk:common update.new_entry.location.y set from storage pk:common update.old_entry.y
data modify storage pk:common update.new_entry.location.z set from storage pk:common update.old_entry.z
data modify storage pk:common update.new_entry.location.dimension set from storage pk:common update.old_entry.Dimension

# Prepend to database
data modify storage pk:pa_ta database.blocks.painting_tables prepend from storage pk:common update.new_entry

# Get items from display entities and update entities
scoreboard players set $update.attempt pk.temp 0
function pk_pa_ta:_main/update/from_v2/painting_tables/2 with storage pk:common update.new_entry.location