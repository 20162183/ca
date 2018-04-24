# Sukuriamas katalogas work
vlib work

# Kompiliuojamas failas not4bit.vhd
vcom -work work statements_v2.vhd

# Modeliavimas atliekamas su not4bit failu
vsim statements_v2

# Pamatyti rezultatus atidaromi langai wave, signals, structure
view wave
view signals
view structure

# Nurodomi signalai norimi matyti lange wave, t. y. paduodami i_bit1 ir i_bit2 bei rezultato o_xor
add wave -noupdate -divider -height 32 Inputs 
add wave i_s


add wave -noupdate -divider -height 32 Outputs
add wave o_x0
add wave o_x1
add wave o_x2

# Suformuojami testiniai signalai. Pirmos dvi eilutės apibrėžia signalus pradžioje, t. y. ties 0 ns. Toliau išvardytos reikšmių lentelės eilutės nurodant pradžią ns 
force -deposit i_s 2#0000 0

force -deposit i_s 2#0001 10

force -deposit i_s 2#0010 20

force -deposit i_s 2#0011 30

force -deposit i_s 2#0100 40

force -deposit i_s 2#0101 50

force -deposit i_s 2#0110 60

force -deposit i_s 2#0111 70

force -deposit i_s 2#1000 80

force -deposit i_s 2#1001 90

force -deposit i_s 2#1010 100

force -deposit i_s 2#1011 110

force -deposit i_s 2#1100 120

force -deposit i_s 2#1101 130

force -deposit i_s 2#1110 140

force -deposit i_s 2#1111 150

# Paleisti modeliavimą 30 ns
run 160 ns
