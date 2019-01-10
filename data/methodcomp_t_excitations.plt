set title "Triplet Excitation Comparison"
set ylabel 'eV'
set xrange [0.5:4.5]
set yrange [0:5]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key out bot cent
plot 'methodcomp_t_excitations.dat' using 2:xtic(1) lt rgb "#F1948A" t 'All-electron TDDFT-PBE0',\
     ''                    u     3         lt rgb "#C0392B" t 'Pseudo-system TDDFT-PBE0',\
     ''                    u     4         lt rgb "#85C1E9" t 'All-electron CASPT2',\
     ''                    u     5         lt rgb "#2980B9" t 'Pseudo-system CASPT2'
set terminal postscript enhanced eps color "Helvetica bold" 24
set output 'methodcomp_t_excitations.eps'
replot

