#> pk_pa_ta:blocks/painting_table/entities/controller/update/in_use/initialize

# Prepare scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Mark in_use custom_block controller
tag @s add pk.custom_block.in_use

# Initialize prev_valid_input data
data modify entity @s data.pk_data.prev_inputs set value []