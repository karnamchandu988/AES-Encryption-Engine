# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Apr 26 12:19:23 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design aes_one_round

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
