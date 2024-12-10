set DESIGN_NAME "Multiplier_top_p"
set lib_dir "home/ic_libs/smic180"

#set search_path "/home/ic_libs/smic180/digital/sc/synopsys/;/home/ic_libs/smic180/itf_tluplus/;../milkyway/"     #设置搜索路径
#set search_path {"/home/ic_libs/smic180/digital/sc/synopsys/" "/home/ic_libs/smic180/itf_tluplus/" "../milkyway/"}  #设置搜索路径
set search_path [list "/home/ic_libs/smic180/digital/sc/synopsys/" "/home/ic_libs/smic180/itf_tluplus/" "../milkyway/"]
set target_library "typical.db"   
set link_library "* $target_library"
set symbol_library " smic18.sdb "   


create_workspace -flow normal -technology /home/ic_libs/smic180/digital/sc/apollo/tf/smic18_4lm.tf TECH_ONLY_NDM
read_parasitic_tech -tlup /home/ic_libs/smic180/itf_tluplus/smiclog018_4lm_cell_max.tluplus -name MAX_TLUP
read_parasitic_tech -tlup /home/ic_libs/smic180/itf_tluplus/smiclog018_4lm_cell_min.tluplus -name MIN_TLUP
read_lef /home/ic_libs/smic180/digital/sc/lef/smic18_4lm.lef
check_workspace
commit_workspace -output ../milkyway/tech_lib.ndm
