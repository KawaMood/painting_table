#> pk_pa_ta:_main/update/from_v2/vilagers/clean_up

data remove entity @s Offers.Recipes[{sell:{components:{"minecraft:custom_data":{pkPaintingTable:1b}}}}]
tag @s remove pk.pa_ta.villager.profession.mason
tag @s remove pk.pa_ta.villager.ignore