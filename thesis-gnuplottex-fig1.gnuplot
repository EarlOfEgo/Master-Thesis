set terminal pdf color
set output 'thesis-gnuplottex-fig1.pdf'
          set title 'Laptop Steps'
  set datafile separator ','
  set xlabel 'Query'
  set ylabel 'Average time in ms (100 executions)'
  set xrange [0:21]
  set xtics 1,1,20
  set logscale y
  set grid ytics lt 0 lw 1 lc rgb '#bbbbbb'
  set grid xtics lt 0 lw 1 lc rgb '#bbbbbb'
  set key samplen 2 spacing .5 font ',8'
  show grid
  set style fill solid 0.8 border -1
  set boxwidth 0.5 relative
  plot for [i=1:14] 'benchmarks/basex-steps-laptop-transposed.csv' u ($0+1):i title ''.i.'00KB' with linespoints
