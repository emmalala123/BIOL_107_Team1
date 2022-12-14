function [a, b, c, d] = gaussfit(x,y)
% GAUSSFIT fits the data to a gaussian function

bestfit = [];
lowerror = Inf;

i = 0;
while i<30,
    % will choose new start point randomly

    gauss = fittype('a+b*exp(-((x-c).^2)/((2*d^2)))'); % fit to gauss
fo = fitoptions(gauss);

 % guess parameters
a_guess = mean(mean(y'));
b_guess = max(max(y'));
c_guess = randn;
d_guess = 1;
fo.StartPoint = [a_guess b_guess c_guess d_guess];
fo.Lower = [-b_guess; 0; min(min(x')); 0];  
fo.Upper = [b_guess; Inf; max(max(x')); Inf]; 
gauss = setoptions(gauss, fo);
    [currentfit,currentgof] = fit(x(:),y(:),gauss); % perform fit
    if currentgof.sse < lowerror,
        bestfit = currentfit;
        lowerror = currentgof.sse;
    end;
    i = i + 1;
end;

fit_coeffs = coeffvalues(bestfit);
a = fit_coeffs(1);
b = fit_coeffs(2);
c = fit_coeffs(3);
d = fit_coeffs(4); 


end
