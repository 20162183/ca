# Sukuriamas katalogas work
vlib work

# Kompiliuojamas failas not4bit.vhd
vcom -work work statements.vhd

# Modeliavimas atliekamas su not4bit failu
vsim statements

# Pamatyti rezultatus atidaromi langai wave, signals, structure
view wave
view signals
view structure

# Nurodomi signalai norimi matyti lange wave, t. y. paduodami i_bit1 ir i_bit2 bei rezultato o_xor
add wave -noupdate -divider -height 32 Inputs 
add wave i_in


add wave -noupdate -divider -height 32 Outputs
add wave o_out0

# Suformuojami testiniai signalai. Pirmos dvi eilutės apibrėžia signalus pradžioje, t. y. ties 0 ns. Toliau išvardytos reikšmių lentelės eilutės nurodant pradžią ns 
force -deposit i_in 2#00 0

force -deposit i_in 2#01 10

force -deposit i_in 2#10 20

force -deposit i_in 2#11 30

# Paleisti modeliavimą 30 ns
run 40 ns
