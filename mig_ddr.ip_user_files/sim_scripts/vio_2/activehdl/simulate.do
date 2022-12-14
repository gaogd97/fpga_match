onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+vio_2 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.vio_2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {vio_2.udo}

run -all

endsim

quit -force
