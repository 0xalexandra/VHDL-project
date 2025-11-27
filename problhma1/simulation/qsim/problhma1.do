onerror {quit -f}
vlib work
vlog -work work problhma1.vo
vlog -work work problhma1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.problhma1_vlg_vec_tst
vcd file -direction problhma1.msim.vcd
vcd add -internal problhma1_vlg_vec_tst/*
vcd add -internal problhma1_vlg_vec_tst/i1/*
add wave /*
run -all
