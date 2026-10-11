#> pk_pa_ta:blocks/painting_table/actions/create/cancel

# Stop the process if the player is in creative mode
execute if entity @s[gamemode=creative] run return fail

# Give item back to the player
function pk_pa_ta:items/painting_table/give {count: 1}
#   Force slot to update
execute if items entity @s weapon.mainhand *[custom_data~{pk_data:{id:"painting_table"}}] run function pk_pa_ta:blocks/painting_table/actions/create/force_update/mainhand
execute if items entity @s weapon.offhand *[custom_data~{pk_data:{id:"painting_table"}}] run function pk_pa_ta:blocks/painting_table/actions/create/force_update/offhand