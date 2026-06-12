#> pk_pa_ta:_main/update/_run
#
# Update the current data pack if needed
#
# @writes score $pk.pa_ta.version pk.value
#   The data pack's current version score
#
# @writes storage pk:common installed_datapacks[{id:"painting_table"}]
#       version: string
#           The data pack's current literal version

# V.3.0.8
execute unless score $pk.pa_ta.version pk.value matches 30008.. run function pk_pa_ta:_main/update/versions/3_0_8

scoreboard players set $pk.pa_ta.version pk.value 30008
data modify storage pk:common installed_datapacks[{id:"painting_table"}].version set value "3.0.8"