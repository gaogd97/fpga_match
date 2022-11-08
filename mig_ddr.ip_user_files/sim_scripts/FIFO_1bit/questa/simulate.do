onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_1bit_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_1bit.udo}

run -all

quit -force
