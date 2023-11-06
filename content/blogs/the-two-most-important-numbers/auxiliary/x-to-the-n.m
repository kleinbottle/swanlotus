# x-to-the-n.m
# Generates plots of x^n for n = [0, 1, 2, 4, 8, 16, 128, 512, 1024]
# to plot over the domain [0, 1.2]
# Alternative to generating by gnuplot.
#
# graphics_toolkit('gnuplot')
n = [0, 1, 2, 4, 8, 16, 128, 512, 1024 2048 4096]
x = [0:0.1:1.0 1.0:0.01:1.1]
y = x'.^n
y(y < 0.001) = 0
y(y > 4) = 4;
p = x';
q = y';
plot(p, q);
