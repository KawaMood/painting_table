#> pk_pa_ta:blocks/painting_table/behavior/surrounding/blocks/verify_droppers
#
# Prevent droppers to face the container block

execute if block ~-1 ~ ~ dropper[facing=east] run setblock ~-1 ~ ~ dropper[facing=up]
execute if block ~1 ~ ~ dropper[facing=west] run setblock ~1 ~ ~ dropper[facing=up]
execute if block ~ ~ ~-1 dropper[facing=south] run setblock ~ ~ ~-1 dropper[facing=up]
execute if block ~ ~ ~1 dropper[facing=north] run setblock ~ ~ ~1 dropper[facing=up]
execute if block ~ ~1 ~ dropper[facing=down] run setblock ~ ~1 ~ dropper[facing=up]
execute if block ~ ~-1 ~ dropper[facing=up] run setblock ~ ~1 ~ dropper[facing=down]