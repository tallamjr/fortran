# Set terminal and output
set terminal postscript enhanced color
set output 'plot_10.ps'

# Set various features of the plot
set pm3d
unset surface  # don't need surfaces
set view map
set contour
set key outside
set cntrparam cubicspline  # smooth out the lines
set cntrparam levels 50    # sets the num of contour lines
set pm3d interpolate 20,20 # interpolate the color

# Set a nice color palette
#set palette model RGB defined ( 0&quot;black&quot;, 1&quot;blue&quot;, 2&quot;cyan&quot;,3&quot;green&quot;,4&quot;yellow&quot;,5&quot;red&quot;,8&quot;purple&quot; )

# Axes
set xlabel 'X'
set ylabel 'Y'
set format x '%.1f'
set format y '%.1f'
set format z '%.2f'

# Now plot
splot 'mydata.dat' using 1:2:3 notitle with lines lt 1

