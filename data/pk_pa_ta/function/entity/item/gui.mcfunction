# Kill item
kill @s
# Restore GUI
execute as @e[type=marker,tag=pk.pa_ta.block.painting_table.controller,tag=pk.pa_ta.in_use] at @s run data modify block ~ ~ ~ Items append from storage pk:pa_ta database.globals.painting_table_gui[]