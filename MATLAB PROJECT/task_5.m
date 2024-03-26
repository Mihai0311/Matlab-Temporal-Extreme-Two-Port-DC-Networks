num = 1;
denom = [1 1];

w = linspace(0,2*pi,64);

Hj = freqs(num,denom,w);

A = abs(Hj);
fi = angle(Hj);

fi = rad2deg(fi);

plot(Hj)
