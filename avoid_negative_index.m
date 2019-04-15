function x= avoid_negative_index(x)

    N = length(x);
    
    for n= 1: N
        
        if x(n)< 0
            
            x(n) =  - x(n);
           
        end

    end
    
end