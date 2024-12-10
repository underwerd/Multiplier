#step_1:Guidance
set_svf    default.svf
 
#step_2a:Read Reference Design
read_verilog -r ../../src/BoothEndecode.v
read_verilog -r ../../src/ksa_top.v
read_verilog -r ../../src/PP_top.v
read_verilog -r ../../src/PPUnit.v
read_verilog -r ../../src/WallaceTree_top.v
read_verilog -r ../../src/Multiplier_top_p.v

read_db -r ~/../ic_libs/TSMC_013/synopsys/typical.db
set_top -r     Multiplier_top_p
 
#step_2b:Read Implementation Design
read_db -i ~/../ic_libs/TSMC_013/synopsys/typical.db
read_verilog -i ../output/Multiplier_top_p.v   
set_top -i  Multiplier_top_p
 
 
#step_3:set up
#set_constant i:WORK/XXX/DFT_MD 0     #设置i文件的端口常0
#set_constant r:WORK/XXX/DFT_MD 0     #设置i文件的端口常0
 
#set__dont_verify_point i:/WORK/xxx/xx/xx    #设置i文件中不需要verify的点
 
#step_4 & 5:Match and verify
match
report_matched -status unread > ../report/unread.rpt
report_unmatched > ../log/unmatched.rpt
report_balck_boxes > ./balck_box
 
verify
report_failing > ../log/failing.rpt
save_session ./formal -replace  
