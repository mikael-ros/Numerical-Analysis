% What follows is a cleaned up version of the method given in the book, 
% with clearer comments and code quality.
% ---
% Bisection Method
% Approximates solution of f(x)=0
% Input: function f, two parameters a,b such that f(a)*f(b)<0, and tolerance
% Output: Approximate solution xc
function xc=bisection(f,a,b,tolerance)
    if sign(f(a))*sign(f(b)) >= 0           % If signs are same
        error("f(a)f(b)<0 not satisfied!")  % Cease execution
    end
    fa=f(a);
    fb=f(b);
    while (b-a)/2>tolerance
        c=(a+b)/2;
        fc=f(c);
        if fc == 0              % If f(c) equal to 0, c is a root
            break
        end
        if sign(fc)*sign(fa)<0  % If signs are still dissimilar, lower the upper threshold
            b=c;
            fb=fc;
        else                    % Otherwise increase the lower threshold
            a=c;
            fa=fc;
        end
    end
    xc=(a+b)/2;                 % Result will be the proceeding c value