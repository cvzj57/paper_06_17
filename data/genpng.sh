for i in *.eps
do
  echo processing $i
  /usr/bin/convert -density 600 ${i} ${i/eps/png}
done
