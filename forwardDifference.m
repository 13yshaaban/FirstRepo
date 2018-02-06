function [df]= forwardDifference(funFile,x,h,param)
%% df = forwardDifference(funFile,x,h)
% Compute the derivative of a function defined in funfile at points
% x=[x1,...,xn] using a second order forward difference with difference h
% param is a structure that contains data to be used by funFile
% to evaluate the f you use f = funFile(x,param)
%% Approximation

df = zeros(1,length(x));
for i= 1:length(x)
    f=funFile(x(i), param);
    f1=funFile(x(i)+h, param);
    f2=funFile(x(i)+2*h, param);
    df(i)  =  (4*f1-3*f-f2)/2*h;
end