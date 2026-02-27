
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Lab401N -dir "C:/FRKT/shev/Lab401N/planAhead_run_2" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/FRKT/shev/Lab401N/Sch1_lab401.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/FRKT/shev/Lab401N} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "Sch1_lab401.ucf" [current_fileset -constrset]
add_files [list {Sch1_lab401.ucf}] -fileset [get_property constrset [current_run]]
link_design
