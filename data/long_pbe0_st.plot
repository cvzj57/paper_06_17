set title "{/Symbol D}_{ST}"
set ylabel 'eV'
set auto x
set yrange [-1:1.5]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set grid ytics ls -1
set key top right
set xzeroaxis ls -1
plot 'long_pbe0_st.dat'   using 2:xtic(1) lt rgb "#aecf00" t 'Reference alkenes',\
     ''                    u     3         lt rgb "#579d1c" t 'Pseudo-alkenes'
set terminal postscript enhanced eps color "Helvetica" 30
set output 'long_pbe0_st.eps'
replot

