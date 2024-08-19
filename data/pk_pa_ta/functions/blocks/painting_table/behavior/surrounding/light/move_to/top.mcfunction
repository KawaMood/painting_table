#> pk_pa_ta:blocks/painting_table/behavior/surrounding/light/move_to/top
#
# @context a custom block's body part at the custom block's controller

# Update data
execute if entity @s[tag=pk.custom_block.body_part.1] run return run data modify entity @s transformation.translation set value [0.2505f,-0.4995f,-0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.2] run return run data modify entity @s transformation.translation set value [-0.2505f,-0.4995f,-0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.3] run return run data modify entity @s transformation.translation set value [0.2505f,-0.4995f,0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.4] run return run data modify entity @s transformation.translation set value [-0.2505f,-0.4995f,0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.5] run return run data modify entity @s transformation.translation set value [0.2505f,-1.0005f,-0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.6] run return run data modify entity @s transformation.translation set value [-0.2505f,-1.0005f,-0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.7] run return run data modify entity @s transformation.translation set value [0.2505f,-1.0005f,0.2505f]
execute if entity @s[tag=pk.custom_block.body_part.8] run data modify entity @s transformation.translation set value [-0.2505f,-1.0005f,0.2505f]