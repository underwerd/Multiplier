set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.use_workspace_tech -value true
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.reuse_lib -value true
set_app_options -name lib.workspace.create_cached_lib -value true
# workspace typical:
create_workspace typical
read_db /home/ic_libs/smic180/digital/sc/synopsys/typical.db
read_ndm /home/ICer/ic_prjs/multiplier/icc/milkyway/tech_lib.ndm
process_workspaces -check_options {-allow_missing} -output CLIBs/typical.ndm -force
remove_workspace


