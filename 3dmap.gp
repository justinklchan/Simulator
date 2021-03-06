set terminal png
file='data'
set output file.".png"
set style line 1 lt 1 pt 2 lw 4 ps 2
set style line 2 lt rgb "black" pt 4 lw 4 ps 2
set style line 3 lt 3 pt 7 lw 4 ps 2
set style line 4 lt 1 pt 9 lw 4 ps 2

set style line 5 lt 1 lc rgb "black" lw 8
set style line 6 lt 2 lc rgb "red" lw 8
set style line 7 lt 3 lc rgb "blue" lw 8
set style line 8 lt 4 lc rgb "magenta" lw 8

set style line 9 lt 4 lc rgb "red" pt 13 lw 4 ps 2

#set autoscale

set size 1, 0.8
#set size 1.0, 0.5
#set size 0.6,0.6
#set lmargin 8
#set bmargin 3
#set rmargin 2
#set tmargin 1

unset key
set view 50,20
set xlabel "x (m)"
set ylabel "y (m)"
set zlabel "RSS (dBm)" rotate left

# 3D
set pm3d hidden3d 8
splot file u ($1*0.11938):($2*0.06858):3 matrix with pm3d