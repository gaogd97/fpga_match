onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib key_init_opt

do {wave.do}

view wave
view structure
view signals

do {key_init.udo}

run -all

quit -force
