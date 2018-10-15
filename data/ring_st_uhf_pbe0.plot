set title "{/Symbol D}_{ST}"
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
hconv=27.2113845
plot 'ring_st_uhf_pbe0.dat'   using (column(4)-column(2))*hconv:xtic(1) lt rgb "#aecf00" t 'Reference rings', \
    ''                    u     (column(5)-column(3))*hconv:xtic(1)       lt rgb "#579d1c" t 'Pseudo-rings'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'ring_pbe0_st_uhf.eps'
#set terminal pngcairo enhanced color
#set output 'ring_pbe0_st_uhf.png'
replot
