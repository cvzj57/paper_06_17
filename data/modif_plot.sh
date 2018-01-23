for i in *.plot
do
#  sed -i s/Helvetica/'Helvetica bold'/ $i
  sed -i s/set.auto.x/"set xrange [-.5:5.5]"/ $i
done
