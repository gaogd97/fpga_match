onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RGB_MEM_opt

do {wave.do}

view wave
view structure
view signals

do {RGB_MEM.udo}

run -all

quit -force
