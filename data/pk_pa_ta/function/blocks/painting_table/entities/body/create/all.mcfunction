#> pk_pa_ta:blocks/painting_table/entities/body/create/all
#
# Place all body parts on the block above the painting table
#
# @context any at the painting table align xyz positioned ~0.5 ~1 ~0.5

# Parts 1-8
data modify storage pk:common args.value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzgyMzM1ZDNlNmUyNzg0YTAyNzMyOTM4ODI3MWJlZTJmMDdlOGUzMjU2M2M1YTcyZDVmZjA1MmM2MDU2OWIxMzUifX19"
data modify storage pk:common args merge value {i:1,translation:[0.2505f,-0.4995f,-0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args
data modify storage pk:common args merge value {i:8,translation:[-0.2505f,-1.0005f,0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args

# Parts 2-7
data modify storage pk:common args.value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2M5ZjNiNmEyZmJmYzI2ODI1MzE1MGEwMzIyZDg0MjBjYmIwODJlMjAxMGY4YTE2YmY5NDMxZGY3ZjFmNTc0MTIifX19"
data modify storage pk:common args merge value {i:2,translation:[-0.2505f,-0.4995f,-0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args
data modify storage pk:common args merge value {i:7,translation:[0.2505f,-1.0005f,0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args

# Parts 3-6
data modify storage pk:common args.value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2VmNTFlMjg3M2UzYWZhNTY0OGNlZmVlM2ZmMGYyYjY5ODkwNGM4YjAyODI4NWQ4ZTZkOGE0ZjlkNGI1YzAzNzEifX19"
data modify storage pk:common args merge value {i:3,translation:[0.2505f,-0.4995f,0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args
data modify storage pk:common args merge value {i:6,translation:[-0.2505f,-1.0005f,-0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args

# Parts 4-5
data modify storage pk:common args.value set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2E4MWFkZjhjODMwMTJiYTIzMGE0ZGQ0NmY1NTZhNzg5ODU2NDIwNDMwMThjM2I1MzM2MTYwOTk1NjJlZDdkYmIifX19"
data modify storage pk:common args merge value {i:4,translation:[-0.2505f,-0.4995f,0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args
data modify storage pk:common args merge value {i:5,translation:[0.2505f,-1.0005f,-0.2505f]}
execute summon item_display run function pk_pa_ta:blocks/painting_table/entities/body/create/initialize_single with storage pk:common args