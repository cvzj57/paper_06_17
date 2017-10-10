set title "{/Symbol e}_{HOMO}"
set ylabel 'eV'
set xrange [-.5:5.5]
set yrange [-10:0]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key bottom right
plot 'ring_pbe0_homo.dat' using 2:xtic(1) lt rgb "#83caff" t 'Reference rings',\
     ''                    u     3         lt rgb "#0084d1" t 'Pseudo-rings'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'ring_pbe0_homo.eps'
replot

