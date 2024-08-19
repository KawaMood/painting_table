#> pk_pa_ta:blocks/painting_table/entities/controller/create/initialize
#
# Initialize the controller entity of a painting table
#
# @input storage pk:common temp
#   painting_table: PaintingTable
#       Data of the painting table
#
# @context the controller at the painting table positioned ~0.5 ~0.5 ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.custom_block.light.top
tag @s add pk.pa_ta
tag @s add pk.pa_ta.block
tag @s add pk.pa_ta.block.painting_table
tag @s add pk.pa_ta.block.painting_table.controller

# Set scores
#   id
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.painting_table.id
#   facing
scoreboard players set @s pk.custom_block.facing 0
execute if data storage pk:common temp.painting_table{facing:"east"} run scoreboard players set @s pk.custom_block.facing 1
execute if data storage pk:common temp.painting_table{facing:"south"} run scoreboard players set @s pk.custom_block.facing 2
execute if data storage pk:common temp.painting_table{facing:"west"} run scoreboard players set @s pk.custom_block.facing 3

# Set data
data modify entity @s data.pk_data.id set from storage pk:common temp.painting_table.id