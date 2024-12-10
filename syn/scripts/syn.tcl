#set work dir
set work_dir "/home/ICer/ic_prjs/multiplier/"
set project_name "Multiplier_design"
set design Multiplier_top_p

#set lib
set_app_var search_path "/home/ic_libs/smic180/digital/sc/synopsys/ "
set_app_var target_library "typical.db"
set_app_var link_library "* typical.db"
set_app_var symbol_library "smic18.sdb"

sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work

#read file
read_verilog ../src/BoothEndecode.v
read_verilog ../src/ksa_top.v
read_verilog ../src/PPUnit.v
read_verilog ../src/PP_top.v
read_verilog ../src/WallaceTree_top.v
read_verilog ../src/Multiplier_top_p.v

analyze -library work -format verilog ../src/${design}.v
elaborate $design -lib work

# Solve Multiple Instance
set uniquify_naming_style "%s_mydesign_%d"
uniquify

# link the design
current_design $TOPLEVEL
link

# before synthesis settings
set case_analysis_with_logic_constants true
set_fix_multiple_port_nets -feedthroughs -outputs -constants -buffer_constants

check_design
source ./cons/cons.tcl
link

###check design log###
check_design > ./log/check_design.log
check_timing > ./log/check_timing.log

compile_ultra -exact_map -no_autoungroup -no_seq_output_inversion -no_boundary_optimization

# remove dummy ports
remove_unconnected_ports [get_cells -hierarchical *]
remove_unconnected_ports [get_cells -hierarchical *] -blast_buses


#####report outputs######
report_area -hier > ./report/synth_area.rpt
report_power -hier > ./report/synth_power.rpt
report_cell > ./report/synth_cells.rpt
report_qor  > ./report/synth_qor.rpt
report_resources > ./report/synth_resources.rpt
report_timing -delay min -max_paths 4 > ./report/synth_Hold.rpt 
report_timing -delay max -max_paths 4 > ./report/synth_Setup.rpt
report_timing -path full -delay max -max_paths 1 -nworst 1 -significant_digits 4 > ./report/synth_timing.rpt
report_constraint -all_violators > ./report/report_violation.rpt

write_sdc  output/${design}.sdc 
write_sdf -version 1.0  -context verilog  output/${design}.sdf

define_name_rules  no_case -case_insensitive
change_names -rule no_case -hierarchy
change_names -rule verilog -hierarchy
set verilogout_no_tri	 true
set verilogout_equation  false

write -hierarchy -format verilog -output output/${design}.v 
write -f ddc -hierarchy -output output/${design}.ddc   

exit
