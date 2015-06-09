set terminal png
file='data.txt'
set output "data.png"
set palette rgbformulae 30,31,32
set size 1, 0.8

unset key

#set xlabel "x (m)"
#set ylabel "y (m)"

# RSS
#set cblabel "RSS (dBm)"
#set cbrange[-35:-75]

set pm3d map
set pm3d interpolate 0,0
#set xrange[0:25]
#set yrange[0:14]
#splot file u ($1*1.43256):($2*0.82296):3 matrix

plot file matrix using 1:2:3 with image pixels,\
file matrix using 1:2:($3 == 0 ? "" : sprintf("%g",$3) ) with labels textcolor rgb "black"