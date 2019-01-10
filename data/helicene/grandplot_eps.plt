#set terminal pngcairo size 1000, 1200
set terminal postscript enhanced color solid "Helvetica,20" eps size 8cm, 20cm
#set termoption enhanced
set output 'pbe0_grand_rpas.eps'
set multiplot layout 4,1 columnsfirst
#set label "Helicene UV and ECD Spectra" at graph 0.0,1.08
set title "6 rings" offset 0,-2.5
unset xtics
unset ytics
fact=1.0
const=32.0
ref_colour=1
ps_colour=2
fact2=50
shifty=6
set xrange [100:600]
plot 'ref/ch_06_/convolution.csv' u 1:2                 w l lw 3 lc ref_colour t 'ref', 'ps/ch_06_/convolution.csv' u ($1*fact+const):2                 w l lw 3 lc ps_colour t 'ps', \
     'ref/ch_06_/convolution.csv' u 1:($3*fact2-shifty) w l lw 3 lc ref_colour t ''   , 'ps/ch_06_/convolution.csv' u ($1*fact+const):($3*fact2-shifty) w l lw 3 lc ps_colour t ''  , \
     0 lc 0 t '', -shifty lc 0 t ''
unset label
unset ylabel
unset xlabel
set title "7 rings"
plot 'ref/ch_07_/convolution.csv' u 1:2                 w l lw 3 lc ref_colour t 'ref', 'ps/ch_07_/convolution.csv' u ($1*fact+const):2                 w l lw 3 lc ps_colour t 'ps', \
     'ref/ch_07_/convolution.csv' u 1:($3*fact2-shifty) w l lw 3 lc ref_colour t ''   , 'ps/ch_07_/convolution.csv' u ($1*fact+const):($3*fact2-shifty) w l lw 3 lc ps_colour t ''  , \
     0 lc 0 t '', -shifty lc 0 t ''
unset label
set title "8 rings"
plot 'ref/ch_08_/convolution.csv' u 1:2                 w l lw 3 lc ref_colour t 'ref', 'ps/ch_08_/convolution.csv' u ($1*fact+const):2                 w l lw 3 lc ps_colour t 'ps', \
     'ref/ch_08_/convolution.csv' u 1:($3*fact2-shifty) w l lw 3 lc ref_colour t ''   , 'ps/ch_08_/convolution.csv' u ($1*fact+const):($3*fact2-shifty) w l lw 3 lc ps_colour t ''  , \
     0 lc 0 t '', -shifty lc 0 t ''
set title "9 rings"
set xtics
set xlabel 'Wavelength (nm)'
plot 'ref/ch_09_/convolution.csv' u 1:2                 w l lw 3 lc ref_colour t 'ref', 'ps/ch_09_/convolution.csv' u ($1*fact+const):2                 w l lw 3 lc ps_colour t 'ps', \
     'ref/ch_09_/convolution.csv' u 1:($3*fact2-shifty) w l lw 3 lc ref_colour t ''   , 'ps/ch_09_/convolution.csv' u ($1*fact+const):($3*fact2-shifty) w l lw 3 lc ps_colour t ''  , \
     0 lc 0 t '', -shifty lc 0 t ''
unset multiplot
