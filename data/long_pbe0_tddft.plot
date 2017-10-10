set title "TD-DFT Excitation (PBE0)"
set ylabel 'eV'
set auto x
set yrange [0:1.2]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set key top right
plot 'long_pbe0_tddft.dat'   using 2:xtic(1) lt rgb "#aecf00" t 'Reference alkenes',\
     ''                       u     3         lt rgb "#579d1c" t 'Pseudo-alkenes'
set terminal postscript enhanced eps color "Helvetica" 20
set output 'long_pbe0_tddft.eps'
replot

