set title "I.E."
set ylabel 'eV'
set xrange [-.5:5.5]
set yrange [0:12]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key top right
plot 'ring_pbe0_ie.dat'   using 2:xtic(1) lt rgb "#ff950e" t 'Reference rings',\
     ''                    u     3         lt rgb "#ff420e" t 'Pseudo-rings'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'ring_pbe0_ie.eps'
replot

