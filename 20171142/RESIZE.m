function B = RESIZE(A, X)
    
    [x, y, ch] = size(A);
    Bx = x * X;
    By = y * X;
    
    row = ceil((1:Bx)/X);
    col = ceil((1:By)/X);
    
    B = A(row , col, :);
end