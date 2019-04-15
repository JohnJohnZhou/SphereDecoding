function [y2, H2] = complex2real_problems(H, y)

    y2 = [real(y);imag(y)];

    H2 = [real(H),-imag(H);imag(H),real(H)];
    
