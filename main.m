clc;
clear;
N = 8;
H = rand(N,N)+1j*rand(N,N);
n = rand(N,1)+1j*rand(N,1);
x_indx = randi([1,16],N,1);
constellation_real = [-3,-1,1,3];

constellation_complex = repmat(constellation_real.',[1,4])+1j*repmat(constellation_real,[4,1]);
x = zeros(N,1);
for k = 1:N

   x(k) = constellation_complex(x_indx(k));

end

y = H*x + 1e-2*n;

x_hat = sphere_decoding(y, H, constellation_real);

length(find(x_hat == x))


% H = rand(N,N);
% x_indx = randi([1,16],8,1);
% y = H*x + 0*1e-2;