onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ila_6 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_6 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ila_6.udo}

run -all

endsim

quit -force
