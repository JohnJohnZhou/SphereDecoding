function x_hat = sphere_decoding(y, H, constellation_real)

    N = size(H,2);

    [y, H] = complex2real_problems(H, y);

    D = H.';
    r = y.';

    [r, D] = scaling_constellation(r, D, constellation_real);
    [y, G] = preprocess(r, D);

    %indx_closest = decode5(y, G);

    [indx_closest,wHat,nv,nf,nl] = SEA_det(2*N,length(constellation_real)-1,y.',G.',0)
    
    indx_closest = avoid_negative_index(indx_closest);
    
    x_hat_real = scalingback2constellation(indx_closest(1:N), constellation_real);
    x_hat_imag = scalingback2constellation(indx_closest((N+1):2*N), constellation_real);

    x_hat = x_hat_real+1j*x_hat_imag;

