num = [1 12];
denom = [1 2 5];
[z, p ,k] = tf2zp(num,denom);

num = 4;
denom = [5 2 4];


[z, p ,k] = tf2zpk(num,denom)
