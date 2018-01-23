set terminal postscript size 5,13 enhanced eps color font 'Helvetica-bold,30'
set output 'long_pbe0.eps'
set multiplot layout 4,1
  set title "{/Symbol e}_{HOMO} (eV)"
#  set ylabel 'eV'
  unset ylabel
  set xrange [-.5:4.5]
  set yrange [-7:0]
  set style data histogram
  set style histogram cluster gap 1
  set style fill solid border -1
  set boxwidth 0.9
#  set xtic rotate by -45 scale 0
  set xtics format " "
  set grid ytics ls -1
  set key bottom right
  plot 'long_pbe0_homo.dat' using 2         lt rgb "#83caff" t 'Reference alkenes',\
       ''                    u     3         lt rgb "#0084d1" t 'Pseudo-alkenes'
  
  set title "I.E. (eV)"
#  set ylabel 'eV'
  unset ylabel
  set xrange [-.5:4.5]
  set yrange [0:8]
  set style data histogram
  set style histogram cluster gap 1
  set style fill solid border -1
  set boxwidth 0.9
#  set xtic rotate by -45 scale 0
  set xtics format " "
  set grid ytics ls -1
  set key top right
  plot 'long_pbe0_ie.dat'   using 2         lt rgb "#ff950e" t 'Reference alkenes',\
       ''                    u     3         lt rgb "#ff420e" t 'Pseudo-alkenes'
  
  set title "{/Symbol D}_{ST} (eV)"
#  set ylabel 'eV'
  unset ylabel
  set xrange [-.5:4.5]
  set yrange [-1:1.5]
  set style data histogram
  set style histogram cluster gap 1
  set style fill solid border -1
  set boxwidth 0.9
#  set xtic rotate by -45 scale 0
  set xtics format " "
  set grid ytics ls -1
  set key top right
  plot 'long_pbe0_st.dat'   using 2         lt rgb "#aecf00" t 'Reference alkenes',\
       ''                    u     3         lt rgb "#579d1c" t 'Pseudo-alkenes'
  
  set title "TD-DFT Excitation (eV)"
#  set ylabel 'eV'
  unset ylabel
#  set size 1., .2
  set xrange [-.5:4.5]
  set yrange [0:1.5]
  set style data histogram
  set style histogram cluster gap 1
  set style fill solid border -1
  set boxwidth 0.9
  set xtic rotate by -45 scale 0
  set grid ytics ls -1
  set key top right
  set xlabel
  plot 'long_pbe0_tddft.dat'   using 2:xtic(1) lt rgb "#aecf00" t 'Reference alkenes',\
       ''                       u     3         lt rgb "#579d1c" t 'Pseudo-alkenes'
unset multiplot
