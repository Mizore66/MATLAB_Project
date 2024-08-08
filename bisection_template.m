function [root,iter] = bisection_template(f, xl, xu, precision)
% [root,iter] = bisection(f, xl, xu, precision)
% Written by: ???, ID: ???
% Last modified: ???
%
% INPUTS:
%  - f: function handle of the equation to be solved
%  - xl: lower limit of the initial guess/bracket
%  - xu: upper limit of the initial guess/bracket
%  - precision: stopping criteria determined by the user
% OUTPUT:
%  - root: the root of the equation

% checking if bounds are appropriate (bounds are appropriate if
% f(xl)*f(xu)is negative
if f(xl)*f(xu)>0
    error('error bounds - no root available');
end

% Estimate 1st iteration of xr and initialise iteration count
iter=1;
xr=0.5*(xl+xu);

% Check if f(xr) is close enough to zero

while abs(f(xr))>precision
    if f(xl)*f(xr)<0
        xu=xr;   
    else
        xl=xr;
    end
    
    iter=iter+1;
    xr=0.5*(xl+xu);
end
    
root=xr;