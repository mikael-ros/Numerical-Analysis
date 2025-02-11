% What follows is a function I wrote myself, in full.
% ---
% Bisection Method with multiple intervals
% Approximates several solutions of f(x)=0
% Input: function handle f, matrix of pairs of parameters a,b such that f(a)*f(b)<0, and tolerance
% Output: Approximate solutions xc, as array
function xcs=bisectionmultiple(f, pairs, tolerance)
    xcs = [];               % Initialize xcs
    for i = 1:length(pairs) % For every pair
        % Concatenate result of bisection calculation on pair
        xcs = [xcs,  bisection(f, pairs(i,1), pairs(i,2), tolerance)]; 
    end