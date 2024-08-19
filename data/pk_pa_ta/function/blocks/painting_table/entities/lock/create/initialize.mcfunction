#> pk_pa_ta:blocks/painting_table/entities/lock/create/initialize

# Set score
scoreboard players operation @s pk.custom_block.component.id = $temp pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.pa_ta
tag @s add pk.pa_ta.block
tag @s add pk.pa_ta.block.painting_table
tag @s add pk.pa_ta.block.painting_table.lock

# Set data
data merge entity @s {width:1.002f,height:1.002f,response:0b}