function y = scalingback2constellation(x, constellation)

    N = length(x);

    y = zeros([N,1]);

    for ii = 1:N

        y(ii) = constellation(x(ii)+1);
        
    end

end
