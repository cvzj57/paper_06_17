set title "TD-DFT Excitation"
set ylabel 'eV'
set xrange [-.5:5.5]
set yrange [0:5]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key top right
plot 'ring_pbe0_tddft.dat'   using 2:xtic(1) lt rgb "#aecf00" t 'Reference rings',\
     ''                       u     3         lt rgb "#579d1c" t 'Pseudo-rings'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'ring_pbe0_tddft.eps'
replot

