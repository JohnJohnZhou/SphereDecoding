function [y,D] = scaling_constellation(y, D, constellation)

        N = size(D,1);

        m = length(constellation);

        M = (m-1)/2;

        c = max(constellation)/M;

        y = y + M*c*ones(1,N)*D;

        D = D*c;

end
