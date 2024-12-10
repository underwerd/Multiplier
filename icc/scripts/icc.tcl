set DESIGN_NAME "Multiplier_top_p"
set lib_dir "home/ic_libs/smic180"

#set search_path "/home/ic_libs/smic180/digital/sc/synopsys/;/home/ic_libs/smic180/itf_tluplus/;../milkyway/"     #设置搜索路径
#set search_path {"/home/ic_libs/smic180/digital/sc/synopsys/" "/home/ic_libs/smic180/itf_tluplus/" "../milkyway/"}  #设置搜索路径
set search_path [list "/home/ic_libs/smic180/digital/sc/synopsys/" "/home/ic_libs/smic180/itf_tluplus/" "../milkyway/"]
set target_library "typical.db"   
set link_library "* $target_library"
set symbol_library " smic18.sdb "   


#create_workspace -flow normal -technology /home/ic_libs/smic180/digital/sc/apollo/tf/smic18_4lm.tf TECH_ONLY_NDM
#read_parasitic_tech -tlup /home/ic_libs/smic180/itf_tluplus/smiclog018_4lm_cell_max.tluplus -name MAX_TLUP
#read_parasitic_tech -tlup /home/ic_libs/smic180/itf_tluplus/smiclog018_4lm_cell_min.tluplus -name MIN_TLUP
#check_workspace
#commit_workspace -output ../milkyway/tech_lib.ndm


create_lib ../milkyway/lib.ndb \
             -technology /home/ic_libs/smic180/digital/sc/apollo/tf/smic18_4lm.tf  \
             -ref_libs  ../milkyway/tech_lib.ndm     

read_verilog "../../syn/output/Multiplier_top_p.v"  -top Multiplier_top_p  

#uniquify_fp_mw_cel
link_block
current_design $DESIGN_NAME

#set_tlu_plus_files  -max_tluplus  /home/ic_libs/smic180/itf_tluplus/smiclog018_4lm_cell_max.tluplus  \
				    -min_tluplus  /home/ic_libs/smic180//itf_tluplus/smiclog018_4lm_cell_min.tluplus \
					-tech2itf_map /home/ic_libs/smic180/digital/sc/apollo/gds2TnLayer_4lm.map   


#report_tlu_plus_files  > ../report/report_tlu_plus.rpt
#check_tlu_plus_files   > ../report/check_tlu_plus.rpt



remove_sdc
read_sdc  ../../syn/outputs/Multiplier_top_p.sdc   
set_clock_uncertainty 0.2  [all_clocks]

remove_propagated_clock  [all_clocks]
check_timing 

#save_mw_cel
start_gui
