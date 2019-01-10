set title "Singlet Excitation"
set ylabel 'eV'
set xrange [0.5:3.5]
set yrange [0:7]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
#set key out bot cent
unset key
plot 'methodcomp_s_excitations.dat' using 2:xtic(1) lt rgb "#F1948A" ,\
     ''                    u     3         lt rgb "#C0392B" ,\
     ''                    u     4         lt rgb "#85C1E9" ,\
     ''                    u     5         lt rgb "#2980B9" 
set terminal postscript enhanced eps color "Helvetica bold" 24
set output 'methodcomp_s_excitations.eps'
replot

