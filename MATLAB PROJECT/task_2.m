z = [1 2];
p = [-3 5];
k = 50;


H_1 = zpk(z,p,k);

  
z = [0.5 ,0.5];
p = [0];
k= 4/12;

H_2 = zpk(z,p,k);

z = [ ];
p = [-3 -3];
k = 5;
Ts = 0.1;

H_3 = zpk(z,p,k,Ts);


z = [2i -2i];
p = [0];
k = 1;
Ts = 0.1;
H_4 = zpk(z,p,k,Ts)




