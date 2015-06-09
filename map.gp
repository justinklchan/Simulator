set terminal png
file='data.txt'
set output file.".png"

unset key
set view 50,20
set xlabel "x (m)"
set ylabel "y (m)"
set zlabel "RSS (dBm)" rotate left

# 3D
set pm3d hidden3d 8
splot file u ($1*0.11938):($2*0.06858):3 matrix with pm3d
