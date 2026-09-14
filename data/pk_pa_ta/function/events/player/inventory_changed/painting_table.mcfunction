#> pk_pa_ta:events/player/inventory_changed/has_painting_table

# Update items from lower versions if needed
execute if items entity @s container.* #pk_pa_ta:placer[custom_data~{pk_data:{id:"painting_table",from:"painting_table"}},!custom_data~{pk_data:{version:30100s}}] run function pk_pa_ta:items/painting_table/update/run {version:30100s}

# Revoke advancement at the end so the function isn't indefinitively triggered by the inventory change above
advancement revoke @s only pk_pa_ta:events/inventory_changed/has_painting_table