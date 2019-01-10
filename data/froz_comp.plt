set title "Pseudo-alkenes vs. Frozen Orbital Alkenes"
set ylabel 'eV'
set xrange [.5:6.5]
set yrange [0:11]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key out bot cent
plot 'froz_comp.dat' using 2:xtic(1) lt rgb "#76D7C4" t 'Frozen-orbital alkenes',\
     ''                    u     3         lt rgb "#16A085" t 'Pseudo-alkenes'
set terminal postscript enhanced eps color "Helvetica bold" 24
set output 'froz_comp.eps'
replot

