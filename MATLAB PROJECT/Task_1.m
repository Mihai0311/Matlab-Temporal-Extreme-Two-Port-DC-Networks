
num = [0.5 2];
denom = [4 2 5];
Ts= 0.1;

H1 = filt(num,denom);

num = [2 0 -1];
denom = [4 1 -4 9];
H2 = tf(num,denom);

num = [1 0];
denom = [1 4 0 -1 4];
H3 = tf(num , denom);

num = [5 0];
denom = [1 0 1];
Ts = 0.1;

H4 = tf(num,denom,Ts);


