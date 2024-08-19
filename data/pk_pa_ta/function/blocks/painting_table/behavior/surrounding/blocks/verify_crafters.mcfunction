#> pk_pa_ta:blocks/painting_table/behavior/surrounding/blocks/verify_crafters
#
# Prevent crafters to face the container block

execute if block ~-1 ~ ~ crafter[orientation=east_up] run setblock ~-1 ~ ~ crafter[orientation=up_north]
execute if block ~1 ~ ~ crafter[orientation=west_up] run setblock ~1 ~ ~ crafter[orientation=up_north]
execute if block ~ ~ ~-1 crafter[orientation=south_up] run setblock ~ ~ ~-1 crafter[orientation=up_north]
execute if block ~ ~ ~1 crafter[orientation=north_up] run setblock ~ ~ ~1 crafter[orientation=up_north]

execute if block ~ ~-1 ~ crafter[orientation=up_east] run setblock ~ ~-1 ~ crafter[orientation=down_north]
execute if block ~ ~-1 ~ crafter[orientation=up_west] run setblock ~ ~-1 ~ crafter[orientation=down_north]
execute if block ~ ~-1 ~ crafter[orientation=up_south] run setblock ~ ~-1 ~ crafter[orientation=down_north]
execute if block ~ ~-1 ~ crafter[orientation=up_north] run setblock ~ ~-1 ~ crafter[orientation=down_north]

execute if block ~ ~1 ~ crafter[orientation=down_east] run setblock ~ ~1 ~ crafter[orientation=up_north]
execute if block ~ ~1 ~ crafter[orientation=down_west] run setblock ~ ~1 ~ crafter[orientation=up_north]
execute if block ~ ~1 ~ crafter[orientation=down_south] run setblock ~ ~1 ~ crafter[orientation=up_north]
execute if block ~ ~1 ~ crafter[orientation=down_north] run setblock ~ ~1 ~ crafter[orientation=up_north]