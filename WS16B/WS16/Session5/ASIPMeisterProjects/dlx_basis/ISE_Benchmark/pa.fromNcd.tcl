
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name ISE_Benchmark -dir "/home/asip04/LabASIP/Session5/ASIPMeisterProjects/dlx_basis/ISE_Benchmark/planAhead_run_1" -part xc5vlx110tff1136-1
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/asip04/LabASIP/Session5/ASIPMeisterProjects/dlx_basis/ISE_Benchmark/dlx_toplevel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/asip04/LabASIP/Session5/ASIPMeisterProjects/dlx_basis/ISE_Benchmark} }
set_param project.paUcfFile  "dlx_toplevel.ucf"
add_files "dlx_toplevel.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "/home/asip04/LabASIP/Session5/ASIPMeisterProjects/dlx_basis/ISE_Benchmark/dlx_toplevel.ncd"
if {[catch {read_twx -name results_1 -file "/home/asip04/LabASIP/Session5/ASIPMeisterProjects/dlx_basis/ISE_Benchmark/dlx_toplevel.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/asip04/LabASIP/Session5/ASIPMeisterProjects/dlx_basis/ISE_Benchmark/dlx_toplevel.twx\": $eInfo"
}
