todo=long_pbe0_homo.png long_pbe0_ie.png long_pbe0_s2.png long_pbe0_st.png long_pbe0_tddft.png ring_pbe0_homo.png ring_pbe0_ie.png ring_pbe0_st.png ring_pbe0_tddft.png short_pbe0_homo.png short_pbe0_ie.png short_pbe0_st.png short_pbe0_tddft_2013.png short_pbe0_tddft.png
all: ${todo}
	(cd ../; make)

%.eps: %.plot
	gnuplot $<

%.png: %.eps
	/usr/bin/convert -density 600 $< $@
