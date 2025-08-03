
set  DESIGN_NAME aes_one_round
set_db init_lib_search_path ./lib



set_db library  ./lib/typical.lib


read_hdl ./aes.v
elaborate $DESIGN_NAME
read_sdc ./aes.sdc

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

syn_generic
syn_map
syn_opt

write_hdl > ${DESIGN_NAME}_netlist.v
write_sdc > ${DESIGN_NAME}_output.sdc

gui_show

report timing -unconstrained > ${DESIGN_NAME}_timing.rpt
report timing > ${DESIGN_NAME}_timing.rpt
report power  > ${DESIGN_NAME}_power.rpt
report area  > ${DESIGN_NAME}_area.rpt
report gates > ${DESIGN_NAME}_gates.rpt
