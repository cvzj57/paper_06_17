set title "{/Symbol e}_{HOMO}"
set ylabel 'eV'
set xrange [-.5:4.5]
set yrange [-7:0]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key bottom right
plot 'long_pbe0_homo.dat' using 2:xtic(1) lt rgb "#83caff" t 'Reference alkenes',\
     ''                    u     3         lt rgb "#0084d1" t 'Pseudo-alkenes'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'long_pbe0_homo.eps'
replot

