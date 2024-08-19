#> pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $temp pk.custom_block.component.id

# Set tags
tag @s add pk.custom_block
tag @s add pk.custom_block.body_part
tag @s add pk.pa_ta
tag @s add pk.pa_ta.block
tag @s add pk.pa_ta.block.painting_table
tag @s add pk.pa_ta.block.painting_table.body_part
$tag @s add pk.custom_block.body_part.$(i)

# Set scores
#   id
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.painting_table.id
#   facing
scoreboard players set @s pk.custom_block.facing 0
execute if data storage pk:common temp.painting_table{facing:"east"} run scoreboard players set @s pk.custom_block.facing 1
execute if data storage pk:common temp.painting_table{facing:"south"} run scoreboard players set @s pk.custom_block.facing 2
execute if data storage pk:common temp.painting_table{facing:"west"} run scoreboard players set @s pk.custom_block.facing 3

# Set data
$data merge entity @s {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"$(value)"}]}}},transformation:{translation:$(translation),scale:[1.002f,1.002f,1.002f]}}

# Set rotation
execute if score @s pk.custom_block.facing matches 0 run tp @s ~ ~ ~ 180 0
execute if score @s pk.custom_block.facing matches 1 run tp @s ~ ~ ~ 270 0
execute if score @s pk.custom_block.facing matches 3 run tp @s ~ ~ ~ 90 0