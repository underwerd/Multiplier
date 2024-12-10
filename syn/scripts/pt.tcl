set search_path "/home/ic_libs/smic180/digital/sc/synopsys/"
set link_path "* typical.db"

set active_design Multiplier_top_p
read_verilog "../output/Multiplier_top_p.v"
current_design $active_design
link

#setting wireload model
set_wire_load_model -name "smic18_wl10"
set_wire_load_mode top

###  ceate your clock here
create_clock -period 10 [get_ports clk] -name clk

###  set clock constrain

set_ideal_network       [get_ports clk]
set_dont_touch_network  [all_clocks]

# I/O delay should depend on the real enironment. Here only shows an example of setting

set_input_delay -max 2 -clock [get_clocks clk] [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay -max 2 -clock [get_clocks clk] [all_outputs]

set_clock_uncertainty 0.20 [get_clocks]
set_false_path -hold -from [remove_from_collection [all_inputs] [get_ports clk]]
set_false_path -hold -to [all_outputs]

# Setting op cinditions
#set_operating_conditions -voltage 1.2 -temperature 25
# Setting DRC Constraint
set_load 1.5 [all_inputs]

set_max_fanout 2 $active_design

report_timing -delay min -max_paths 4 > ../report/pt_Hold.rpt 
report_timing -delay max -max_paths 4 > ../report/pt_Setup.rpt
report_timing -path full -delay max -max_paths 1 -nworst 1 -significant_digits 4 > ../report/pt_timing.rpt
report_constraint -all_violators > ../report/pt_violation.rpt

exit

