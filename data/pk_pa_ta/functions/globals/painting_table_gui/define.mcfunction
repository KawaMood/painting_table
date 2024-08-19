#> pk_pa_ta:globals/painting_table_gui/define
#
# Construct the global GUI for painting tables

data modify storage pk:pa_ta database.globals.painting_table_gui set value []

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# First line
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Slot 0 : Filler
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:0,custom_model_data:11130201}

# Slot 1 : Red dyes indicator
data modify storage pk:pa_ta database.globals.painting_table_gui append value {id:"minecraft:red_dye",count:1,components:{"minecraft:custom_name":'[{"text":"Place ","color":"gray","italic":false},{"text":"red","color":"red"},{"text":" dyes"}]',"minecraft:lore":['{"text":"in the slot below","color":"gray","italic":false}'],"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table",restore_gui_on_click:1b}},"minecraft:custom_model_data":11130202},Slot:1b}

# Slot 2 : Yellow dyes indicator
data modify storage pk:pa_ta database.globals.painting_table_gui append value {id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_name":'[{"text":"Place ","color":"gray","italic":false},{"text":"yellow","color":"yellow"},{"text":" dyes"}]',"minecraft:lore":['{"text":"in the slot below","color":"gray","italic":false}'],"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table",restore_gui_on_click:1b}},"minecraft:custom_model_data":11130203},Slot:2b}

# Slot 3 : Blue dyes indicator
data modify storage pk:pa_ta database.globals.painting_table_gui append value {id:"minecraft:blue_dye",count:1,components:{"minecraft:custom_name":'[{"text":"Place ","color":"gray","italic":false},{"text":"blue","color":"blue"},{"text":" dyes"}]',"minecraft:lore":['{"text":"in the slot below","color":"gray","italic":false}'],"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table",restore_gui_on_click:1b}},"minecraft:custom_model_data":11130204},Slot:3b}

# Slot 4 : Blocks of quartz indicator
data modify storage pk:pa_ta database.globals.painting_table_gui append value {id:"minecraft:quartz_block",count:1,components:{"minecraft:custom_name":'[{"text":"Place blocks of quartz","color":"gray","italic":false}]',"minecraft:lore":['{"text":"in the slot below","color":"gray","italic":false}'],"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table",restore_gui_on_click:1b}},"minecraft:custom_model_data":11130205},Slot:4b}

# Slot 5 : Book indicator
data modify storage pk:pa_ta database.globals.painting_table_gui append value {id:"minecraft:writable_book",count:1,components:{"minecraft:custom_name":'[{"text":"Place a book containing a value","color":"gray","italic":false}]',"minecraft:lore":['{"text":"of a texture in the slot below","color":"gray","italic":false}'],"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table",restore_gui_on_click:1b}},"minecraft:custom_model_data":11130206},Slot:5b}

# Slot 6 : Filler
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:6,custom_model_data:11130201}

# Slot 7 : Player heads indicator
data modify storage pk:pa_ta database.globals.painting_table_gui append value {id:"minecraft:player_head",count:1,components:{"minecraft:hide_tooltip":{},"minecraft:custom_data":{pk_data:{gui:1b,from:"painting_table",restore_gui_on_click:1b}},"minecraft:custom_model_data":11130207},Slot:7b}

# Slot 8 : Filler
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:8,custom_model_data:11130201}

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Second line
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Slot 9 : Filler
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:9,custom_model_data:11130201}

# Slot 10-14 : Input slots (respectively for red, yellow, blue dyes, blocks of quartz and writable or written book)

# Slot 15: Filler
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:15,custom_model_data:11130201}

# Slot 16 : Output slot

# Slot 17: Filler
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:17,custom_model_data:11130201}

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Third line
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Slot 18-26 : Fillers
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:18,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:19,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:20,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:21,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:22,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:23,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:24,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:25,custom_model_data:11130201}
function pk_pa_ta:globals/painting_table_gui/set_filler {slot:26,custom_model_data:11130201}