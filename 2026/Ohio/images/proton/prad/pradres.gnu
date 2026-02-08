set term tikz standalone font '\sffamily' size 14,8


set out "pradres1.tex"
set style line 1 lt 1 lw 2 pt 7 ps 1 lc rgb "blue"
set style line 2 lt 1 lw 2 pt 7 ps 1 lc rgb "red"
set style line 3 lt 1 lw 0 pt 1 ps 1 lc rgb "#00ff00"
set logscale x

set xlabel '$Q^2$ [GeV$^2$]'
set ylabel '$G_E^p$'
set key bottom left  Left reverse
plot "1.1gev.dat" u 3:4:5 w yerrorbars ls 1 title "1.1 GeV data", \
     "2.2gev.dat" u 3:4:5 w yerrorbars ls 2 title "2.2 GeV data", \

set out "pradres2.tex"

plot "1.1gev.dat" u 3:4:5 w yerrorbars ls 1  title "1.1 GeV data", \
     "2.2gev.dat" u 3:4:5 w yerrorbars ls 2 title "2.2 GeV data",\
     "1.1gev.dat" u 3:(1-3.0*$3):(1-3.35*$3) w filledcurve ls 3  title "Size of radius difference", \



set out "pradres3.tex"
set yrange[0.98:1.01]
set xrange[0.0001:0.01]
plot "1.1gev.dat" u 3:4:5 w yerrorbars ls 1  title "1.1 GeV data", \
     "2.2gev.dat" u 3:4:5 w yerrorbars ls 2 title "2.2 GeV data",\
     "1.1gev.dat" u 3:(1-3.0*$3):(1-3.35*$3) w filledcurve ls 3  title "Size of radius difference", \


unset out

!pdflatex pradres1.tex
!convert  -density 300 pradres1.pdf -negate pradres1.png
!pdflatex pradres2.tex
!convert  -density 300 pradres2.pdf -negate pradres2.png
!pdflatex pradres3.tex
!convert  -density 300 pradres3.pdf -negate pradres3.png