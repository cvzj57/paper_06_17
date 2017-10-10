for i in *.eps
do
  echo processing $i
  /usr/bin/convert -density 300 ${i} ${i/eps/png}
done
