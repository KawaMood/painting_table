#> pk_pa_ta:events/player/inventory_changed/has_painting_table

# Update items from lower versions if needed
execute if items entity @s container.* player_head[custom_data~{pk_data:{id:"painting_table",from:"painting_table"}},!custom_data~{pk_data:{version:30004s}}] run function pk_pa_ta:items/painting_table/update/run {version:30004s}

# Revoke advancement at the end so the function isn't indefinitively triggered by the inventory change above
advancement revoke @s only pk_pa_ta:events/inventory_changed/has_painting_table