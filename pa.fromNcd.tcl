
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name mICRO -dir "F:/Semester Project/8085/mICRO/planAhead_run_1" -part xc5vlx20tff323-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "F:/Semester Project/8085/mICRO/onse.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/Semester Project/8085/mICRO} }
set_property target_constrs_file "onse.ucf" [current_fileset -constrset]
add_files [list {onse.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "F:/Semester Project/8085/mICRO/onse.ncd"
if {[catch {read_twx -name results_1 -file "F:/Semester Project/8085/mICRO/onse.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"F:/Semester Project/8085/mICRO/onse.twx\": $eInfo"
}
