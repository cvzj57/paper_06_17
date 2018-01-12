set title "Triplet <S^2>"
set xrange [-.5:4.5]
set yrange [0:10]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key top left
plot 'long_pbe0_s2.dat' using 2:xtic(1) lt rgb hsv2rgb(300./360.,1.,0.40) t 'Reference alkenes',\
     ''                    u     3      lt rgb hsv2rgb(300./360.,0.4,1) t 'Pseudo-alkenes'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'long_pbe0_s2.eps'
replot

