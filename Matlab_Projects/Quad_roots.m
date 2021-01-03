clear all
a = 1
b = -6
c = 9

disc = b*b - 4*a*c;
if disc > 0
    disp('Discriminant is positive, roots are real.');
elseif disc < 0
    disp('Disciminant is negative, roots are imaginary.');
elseif disc == 0
    disp('Discriminant is zero, roots are repeated.');
else
    disp('Roots are real.');
end