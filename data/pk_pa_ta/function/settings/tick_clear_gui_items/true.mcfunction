#> pk_pa_ta:settings/tick_clear_gui_items/true

# Cancel process if setting is already set on the attempted value
execute if score $pk.pa_ta.settings.tick_clear_gui_items pk.value matches 1 run tellraw @s [{text:"Setting \"",color:"red"},{text:"Tick Clear GUI Items",color:"yellow"},{text:"\" is already set to ",color:"red"},{text:"true",color:"yellow"}]
execute unless score $pk.pa_ta.settings.tick_clear_gui_items pk.value matches 1 run tellraw @s [{text:"Setting \"",color:"gray"},{text:"Tick Clear GUI Items",color:"yellow"},{text:"\" has been set to ",color:"gray"},{text:"true",color:"yellow"}]

# Update the setting's value
scoreboard players set $pk.pa_ta.settings.tick_clear_gui_items pk.value 1