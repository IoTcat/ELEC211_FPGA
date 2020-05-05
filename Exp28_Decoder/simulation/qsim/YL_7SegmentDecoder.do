onerror {quit -f}
vlib work
vlog -work work YL_7SegmentDecoder.vo
vlog -work work YL_7SegmentDecoder.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.YL_7SegmentDecoder_vlg_vec_tst
vcd file -direction YL_7SegmentDecoder.msim.vcd
vcd add -internal YL_7SegmentDecoder_vlg_vec_tst/*
vcd add -internal YL_7SegmentDecoder_vlg_vec_tst/i1/*
add wave /*
run -all
