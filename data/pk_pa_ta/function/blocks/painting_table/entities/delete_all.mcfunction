#> pk_pa_ta:blocks/painting_table/entities/create_all
#
# Delete entities of a painting table
#
# @input storage pk:common temp
#   painting_table: PaintingTable
#       Data of the painting_table
#
# @context location of the painting table

execute store result score $temp pk.custom_block.component.id run data get storage pk:common temp.painting_table.id
kill @e[type=#pk_pa_ta:custom_block_components,tag=pk.pa_ta.block.painting_table,predicate=pk_pa_ta:scores/custom_block/component_id_match,distance=..2]