
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name ISE -dir "/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5d/planAhead_run_1" -part xc5vlx110tff1136-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5d/dlx_toplevel.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5d} }
set_param project.paUcfFile  "dlx_toplevel.ucf"
add_files "dlx_toplevel.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
