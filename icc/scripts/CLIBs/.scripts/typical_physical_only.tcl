set_app_options -name lib.workspace.group_libs_combine_physical_only -value false
set_app_options -name lib.workspace.use_workspace_tech -value true
set_app_options -name lib.workspace.fast_exploration -value true
set_app_options -name lib.workspace.reuse_lib -value true
set_app_options -name lib.workspace.create_cached_lib -value true
# workspace typical_physical_only:
create_workspace -flow physical_only typical_physical_only
set_app_options -name lib.workspace.include_design_filters -value { ANTENNA FILL1 FILL16 FILL2 FILL32 FILL4 FILL64 FILL8}
read_ndm /home/ICer/ic_prjs/multiplier/icc/milkyway/tech_lib.ndm
reset_app_options lib.workspace.include_design_filters
process_workspaces -check_options {-allow_missing} -output CLIBs/typical_physical_only.ndm -force
remove_workspace


