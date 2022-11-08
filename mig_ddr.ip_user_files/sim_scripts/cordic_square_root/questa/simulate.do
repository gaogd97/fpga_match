onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cordic_square_root_opt

do {wave.do}

view wave
view structure
view signals

do {cordic_square_root.udo}

run -all

quit -force
