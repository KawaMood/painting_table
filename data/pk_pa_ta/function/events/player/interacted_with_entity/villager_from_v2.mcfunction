#> pk_pa_ta:events/player/interacted_with_entity/villager_from_v2

advancement revoke @s only pk_pa_ta:events/interacted_with_entity/villager_from_v2

execute anchored eyes positioned ^ ^ ^ as @e[type=villager,tag=pk.pa_ta.villager.ignore,distance=..65] run function pk_pa_ta:_main/update/from_v2/vilagers/clean_up