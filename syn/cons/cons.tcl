# Setting Timing Constraints
###  ceate your clock here

create_clock -name clk -period 10 [get_ports clk]

###  set clock constrain

set_ideal_network       [get_ports clk]
set_dont_touch_network  [all_clocks]

# I/O delay should depend on the real enironment. Here only shows an example of setting

set_input_delay -max 2 -clock [get_clocks clk] [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay -max 2 -clock [get_clocks clk] [all_outputs]

set_clock_uncertainty 0.20 [get_clocks]
set_false_path -hold -from [remove_from_collection [all_inputs] [get_ports clk]]
set_false_path -hold -to [all_outputs]

# Setting wireload model

#set auto_wire_load_selection area_reselect
#set_wire_load_mode enclosed
#set_wire_load_selection_group predcaps
set_wire_load_model -name "smic18_wl10"
set_wire_load_mode enclose
set_wire_load_selection_group predcaps

# Setting op cinditions
set_operating_conditions -voltage 1.2 -temperature 25
# Setting DRC Constraint
set_load 1.5 [all_inputs]

set_max_fanout 2 $design

# Area Constraint
set_max_area   0


