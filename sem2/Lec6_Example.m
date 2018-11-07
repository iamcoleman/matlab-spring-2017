function [ final_guess, iter ] = Lec6_Example( guess )

f_guess = guess^3 - 3*guess^2 - 10*guess + 24;
iter = 0;
x(1) = guess;

while abs(f_guess) > 0.001 && iter < 200 
    guess = guess - (guess^3 - 3*guess^2 - 10*guess + 24)/(3*guess^2 - 6*guess - 10);
    iter = iter + 1;
    f_guess = guess^3 - 3*guess^2 - 10*guess + 24;
    x(iter+1) = guess;
    
end

final_guess = guess;

end

