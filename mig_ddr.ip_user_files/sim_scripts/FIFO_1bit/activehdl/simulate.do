onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FIFO_1bit -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO_1bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO_1bit.udo}

run -all

endsim

quit -force
