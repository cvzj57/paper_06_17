set title "{/Symbol D}_{ST}"
set ylabel 'eV'
set xrange [-.5:4.5]
set yrange [0:]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key top right
hconv=27.2113845
plot 'chain_st_uhf_pbe0.dat'   using (column(3)-column(2))*hconv:xtic(1) lt rgb "#aecf00" t 'Reference Polyenes', \
    ''                    u     (column(5)-column(4))*hconv:xtic(1)       lt rgb "#579d1c" t 'Pseudo-Polyenes'
set terminal postscript enhanced eps color "Helvetica bold" 30
set output 'long_pbe0_st_uhf.eps'
#set terminal pngcairo enhanced color
#set output 'long_pbe0_st_uhf.png'
replot

