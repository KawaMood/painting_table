#> pk_pa_ta:blocks/painting_table/actions/delete/_run
#
# Remove painting table without running animation or looting it
#
# @context painting table controller at @s

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search from the database
function pk_pa_ta:blocks/painting_table/data/search/from_score

# Delete from the database
function pk_pa_ta:blocks/painting_table/data/delete/from_score

# Remove blocks
function pk_pa_ta:blocks/painting_table/blocks/delete

# Remove entities
function pk_pa_ta:blocks/painting_table/entities/delete_all