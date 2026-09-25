set term tikz standalone size 15,5 font '\sffamily'


set out "blindexample.tex"
d2r=3.14159/180

P(x,A,B)=(3-x*d2r)/3*0.2*(A+0.3*sin(B*x*d2r))

S(x,a,b,c,d)=(1-P(x,a,b))/(1-P(x,c,d))


set xlabel "Angle [degrees]"
set ylabel "Effective blinding"

set xrange [0:130]

a=rand(0)*0.75+0.25
c=rand(0)*0.75+0.25
b=rand(0)*7+3
d=rand(0)*7+3
set style line 3 lc "#404040"
set style line 2 lw 4 lc "orange"
set style line 1 lw 4  lc "cyan"


plot for [x=0:990] a=rand(0)*0.75+0.25 c=rand(0)*0.75+0.25 b=rand(0)*7+3 d=rand(0)*7+3 S(x,a,b,c,d) w l ls 3 notitle,\
    a=rand(0)*0.75+0.25 c=rand(0)*0.75+0.25 b=rand(0)*7+3 d=rand(0)*7+3 S(x,a,b,c,d) w l ls 2 notitle,\
    a=rand(0)*0.75+0.25 c=rand(0)*0.75+0.25 b=rand(0)*7+3 d=rand(0)*7+3 S(x,a,b,c,d) w l ls 1 notitle

unset out

!pdflatex blindexample.tex
!convert -density 300 blindexample.pdf -negate blindexample.png
!cp blindexample.png ../../images/blindexample.png