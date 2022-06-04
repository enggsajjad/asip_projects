
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name ISE_Knop -dir "/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/planAhead_run_1" -part xc5vlx110tff1136-1
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/dlx_toplevel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop} }
set_param project.paUcfFile  "dlx_toplevel.ucf"
add_files "dlx_toplevel.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/dlx_toplevel.xdl"
if {[catch {read_twx -name results_1 -file "/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/dlx_toplevel.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/sajjad/WS18/ASIPMeisterProjects/1/brownie/ISE_Knop/dlx_toplevel.twx\": $eInfo"
}
