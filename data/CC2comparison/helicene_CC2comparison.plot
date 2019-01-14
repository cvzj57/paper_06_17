## Last datafile plotted: "helicene_pbe0/h5/convolution.csv"
set terminal postscript enhanced eps color 'Helvetica,20' size 16cm, 20cm
set output 'helicene_CC2comparison.eps'
#set title "ECD spectra of 5-10 helicenes\nComparison of CC2 and experiment"
set xlabel '{/Symbol l}(nm)'
set ylabel "arbitrary unit"
set lt  1 lw 2 lc 1
set lt  2 lw 2 lc 2
set lt  3 lw 2 lc 3
set lt  4 lw 2 lc 4
set lt  5 lw 2 lc 5
set lt  6 lw 2 lc 1
set lt  7 lw 2 lc 2
set lt  8 lw 2 lc 3
set lt  9 lw 2 lc 4
set lt 10 lw 2 lc 5
set lt 11 lw 2 lc 1
set lt 12 lw 2 lc 2
set lt 13 lw 2 lc 3
set lt 14 lw 2 lc 4
set lt 15 lw 2 lc 5
dy=700
scale=1
scale2=4000
unset ytics
set label 'EXP'  at 420, -100+dy font 'Helvetica,20'
set label 'CC2' at 420, -100 font 'Helvetica,20'
set label 'PBE0/def2-SV(P)' at 420, -100-dy font 'Helvetica,20'
set label 'JPCA, 2012, 116 (27)' at 325,  dy-200 font 'Helvetica,15'
set label 'JPCA, 2012, 116 (27)' at 325,    -200 font 'Helvetica,15'
set label 'this work'            at 325, -dy-200 font 'Helvetica,15'
set key at 500,-100
set xrange[250:500]
plot 'ch5.csv'      u 1:2 w l t 'ch[5]', \
     'ch6.csv'      u 1:2 w l t 'ch[6]', \
     'ch7.csv'      u 1:($1>250?$2:0/0) w l lw 3 t 'ch[7]', \
     'ch8.csv'      u 1:($1>250?$2:0/0) w l lw 9 t 'ch[8]', \
     'ch9.csv'      u 1:($1>250?$2:0/0) w l lw 3 t 'ch[9]', \
     'ch5exp.csv'   u 1:($2*scale+dy)   w l lw 3 t '' , \
     'ch6exp.csv'   u 1:($2*scale+dy)   w l lw 3 t '' , \
     'ch7exp.csv'   u 1:($2*scale+dy)   w l lw 3 t '' , \
     'ch8exp.csv'   u 1:($2*scale+dy)   w l lw 9 t '' , \
     'ch9exp.csv'   u 1:($2*scale+dy)   w l lw 3 t '' , \
     'ch5dft.csv'   u 1:($3*scale2-dy)  w l lw 3 t '' , \
     'ch6dft.csv'   u 1:($3*scale2-dy)  w l lw 3 t '' , \
     'ch7dft.csv'   u 1:($3*scale2-dy)  w l lw 3 t '' , \
     'ch8dft.csv'   u 1:($3*scale2-dy)  w l lw 9 t '' , \
     'ch9dft.csv'   u 1:($3*scale2-dy)  w l lw 3 t '' , \
     0  t '' lt 0, \
     dy t '' lt 0, \
     -dy t '' lt 0
