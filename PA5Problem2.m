% Left side of the Linear Equations
A = [3, 4, -3, pi, 1;
     1, -1, 5, -4, 6;
     3, -sqrt(5), -1, 7, -9;
     7, 4, -7, 8, 2;
     9, csc(3), -11, -6/5, 2];

% Right side of yhr Linear Equations
B = [1; 12; -7; 2; 0];

% Solving using inverse method
inverse = inv(A)*B; % built-in MatLab command

% Solving using Cramer's Rule
for n = 1:5 
    An = A; % Copies A
    An(:, n) = B; % Replaces nth column with B
    cramer(n, 1) = det(An)/(det(A)); %Using Cramer's Rule
end 

% Displaying Linear Equations and Results
A, B
inverse
cramer
