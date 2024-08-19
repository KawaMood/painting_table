#> pk_pa_ta:blocks/painting_table/actions/use/flags/output_count_in_container

scoreboard players set $output_count_in_container pk.temp 0
execute store result score $output_count_in_container pk.temp run data get block ~ ~ ~ Items[{Slot:16b,components:{"minecraft:custom_data":{pk_data:{output:1b,from:"painting_table"}}}}].count