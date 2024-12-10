###################################################################

# Created by write_sdc on Tue Dec  3 19:52:28 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_wire_load_model -name smic18_wl10 -library typical
set_max_fanout 2 [current_design]
set_wire_load_selection_group predcaps
set_max_area 0
set_load -pin_load 1.5 [get_ports clk]
set_load -pin_load 1.5 [get_ports rst_n]
set_load -pin_load 1.5 [get_ports {Multiplicant[15]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[14]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[13]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[12]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[11]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[10]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[9]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[8]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[7]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[6]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[5]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[4]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[3]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[2]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[1]}]
set_load -pin_load 1.5 [get_ports {Multiplicant[0]}]
set_load -pin_load 1.5 [get_ports {Multiplier[15]}]
set_load -pin_load 1.5 [get_ports {Multiplier[14]}]
set_load -pin_load 1.5 [get_ports {Multiplier[13]}]
set_load -pin_load 1.5 [get_ports {Multiplier[12]}]
set_load -pin_load 1.5 [get_ports {Multiplier[11]}]
set_load -pin_load 1.5 [get_ports {Multiplier[10]}]
set_load -pin_load 1.5 [get_ports {Multiplier[9]}]
set_load -pin_load 1.5 [get_ports {Multiplier[8]}]
set_load -pin_load 1.5 [get_ports {Multiplier[7]}]
set_load -pin_load 1.5 [get_ports {Multiplier[6]}]
set_load -pin_load 1.5 [get_ports {Multiplier[5]}]
set_load -pin_load 1.5 [get_ports {Multiplier[4]}]
set_load -pin_load 1.5 [get_ports {Multiplier[3]}]
set_load -pin_load 1.5 [get_ports {Multiplier[2]}]
set_load -pin_load 1.5 [get_ports {Multiplier[1]}]
set_load -pin_load 1.5 [get_ports {Multiplier[0]}]
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_false_path -hold   -from [list [get_ports rst_n] [get_ports {Multiplicant[15]}] [get_ports       \
{Multiplicant[14]}] [get_ports {Multiplicant[13]}] [get_ports                  \
{Multiplicant[12]}] [get_ports {Multiplicant[11]}] [get_ports                  \
{Multiplicant[10]}] [get_ports {Multiplicant[9]}] [get_ports                   \
{Multiplicant[8]}] [get_ports {Multiplicant[7]}] [get_ports {Multiplicant[6]}] \
[get_ports {Multiplicant[5]}] [get_ports {Multiplicant[4]}] [get_ports         \
{Multiplicant[3]}] [get_ports {Multiplicant[2]}] [get_ports {Multiplicant[1]}] \
[get_ports {Multiplicant[0]}] [get_ports {Multiplier[15]}] [get_ports          \
{Multiplier[14]}] [get_ports {Multiplier[13]}] [get_ports {Multiplier[12]}]    \
[get_ports {Multiplier[11]}] [get_ports {Multiplier[10]}] [get_ports           \
{Multiplier[9]}] [get_ports {Multiplier[8]}] [get_ports {Multiplier[7]}]       \
[get_ports {Multiplier[6]}] [get_ports {Multiplier[5]}] [get_ports             \
{Multiplier[4]}] [get_ports {Multiplier[3]}] [get_ports {Multiplier[2]}]       \
[get_ports {Multiplier[1]}] [get_ports {Multiplier[0]}]]
set_false_path -hold   -to [list [get_ports {result[31]}] [get_ports {result[30]}] [get_ports        \
{result[29]}] [get_ports {result[28]}] [get_ports {result[27]}] [get_ports     \
{result[26]}] [get_ports {result[25]}] [get_ports {result[24]}] [get_ports     \
{result[23]}] [get_ports {result[22]}] [get_ports {result[21]}] [get_ports     \
{result[20]}] [get_ports {result[19]}] [get_ports {result[18]}] [get_ports     \
{result[17]}] [get_ports {result[16]}] [get_ports {result[15]}] [get_ports     \
{result[14]}] [get_ports {result[13]}] [get_ports {result[12]}] [get_ports     \
{result[11]}] [get_ports {result[10]}] [get_ports {result[9]}] [get_ports      \
{result[8]}] [get_ports {result[7]}] [get_ports {result[6]}] [get_ports        \
{result[5]}] [get_ports {result[4]}] [get_ports {result[3]}] [get_ports        \
{result[2]}] [get_ports {result[1]}] [get_ports {result[0]}]]
set_input_delay -clock clk  -max 2  [get_ports rst_n]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[15]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[14]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[13]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[12]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[11]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[10]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[9]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[8]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[7]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[6]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[5]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[4]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[3]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[2]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[1]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplicant[0]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[15]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[14]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[13]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[12]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[11]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[10]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[9]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[8]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[7]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[6]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[5]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[4]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[3]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[2]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[1]}]
set_input_delay -clock clk  -max 2  [get_ports {Multiplier[0]}]
set_output_delay -clock clk  -max 2  [get_ports {result[31]}]
set_output_delay -clock clk  -max 2  [get_ports {result[30]}]
set_output_delay -clock clk  -max 2  [get_ports {result[29]}]
set_output_delay -clock clk  -max 2  [get_ports {result[28]}]
set_output_delay -clock clk  -max 2  [get_ports {result[27]}]
set_output_delay -clock clk  -max 2  [get_ports {result[26]}]
set_output_delay -clock clk  -max 2  [get_ports {result[25]}]
set_output_delay -clock clk  -max 2  [get_ports {result[24]}]
set_output_delay -clock clk  -max 2  [get_ports {result[23]}]
set_output_delay -clock clk  -max 2  [get_ports {result[22]}]
set_output_delay -clock clk  -max 2  [get_ports {result[21]}]
set_output_delay -clock clk  -max 2  [get_ports {result[20]}]
set_output_delay -clock clk  -max 2  [get_ports {result[19]}]
set_output_delay -clock clk  -max 2  [get_ports {result[18]}]
set_output_delay -clock clk  -max 2  [get_ports {result[17]}]
set_output_delay -clock clk  -max 2  [get_ports {result[16]}]
set_output_delay -clock clk  -max 2  [get_ports {result[15]}]
set_output_delay -clock clk  -max 2  [get_ports {result[14]}]
set_output_delay -clock clk  -max 2  [get_ports {result[13]}]
set_output_delay -clock clk  -max 2  [get_ports {result[12]}]
set_output_delay -clock clk  -max 2  [get_ports {result[11]}]
set_output_delay -clock clk  -max 2  [get_ports {result[10]}]
set_output_delay -clock clk  -max 2  [get_ports {result[9]}]
set_output_delay -clock clk  -max 2  [get_ports {result[8]}]
set_output_delay -clock clk  -max 2  [get_ports {result[7]}]
set_output_delay -clock clk  -max 2  [get_ports {result[6]}]
set_output_delay -clock clk  -max 2  [get_ports {result[5]}]
set_output_delay -clock clk  -max 2  [get_ports {result[4]}]
set_output_delay -clock clk  -max 2  [get_ports {result[3]}]
set_output_delay -clock clk  -max 2  [get_ports {result[2]}]
set_output_delay -clock clk  -max 2  [get_ports {result[1]}]
set_output_delay -clock clk  -max 2  [get_ports {result[0]}]
