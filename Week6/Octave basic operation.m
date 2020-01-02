% tilde =  ALT + 126
%% ~
1 ~= 1 % non equal
1 == 2 %FALSE
1 == 1 %TRUE

1 && 0 % AND
1 && 1 % AND
1 || 0 %OR
xor(1,0)

%% Viariabili , vettori , matrici
a = 3
 
c=(3>=1)

disp(pi)

disp(sprintf('6 decimals: %0.6f', pi))

A = [1 2; 3 4; 5 6]

A'

size(A)

sz = size(A)

size(A, 1)  %first dimension of A
size(A, 2)  %second dimension of A


who %variables in the current scope

whos %details

clear('c')  %clear variable "c"

save MatA.txt A -ascii

load MatA.txt
A([1,3],:)  %% semicolon = tutte la colonna

A(:,3) = [10; 11; 12]  %% aggiungo una colonna
%% oppure 
A = [A, [10; 11; 12]]  %% aggiungo una colonna

A(:) % Put all elements of A into a single column

% PLOT function
t=[0:0.01:0.98];

y1 = sin(2*pi*4*t);

plot(t,y1);

y2 = cos(2*pi*4*t);

hold on;
plot(t, y2, 'r');
xlabel('Time')
ylabel('value')
title('my plot')
print -dpng 'myPlot.png'

A=magic(5)   
% magic matrix, la somma per riga o colonna o diagonale è sempre la stessa


imagesc(A), colorbar

clf % clear plot

v = zeros(10,1);
for i=1:10,
  v(i) = 2^i;
end;

SquareThisNumber(5)

[a,b] = SquareAndCubeThisNumber(5)

X = [1,1;1,2;1,3];
y = [1;2;3];
theta = [0;1];

j = costFunctionJ(X,y,theta)

theta = [0;0];
j = costFunctionJ(X,y,theta)  % 2.3333

% cost function
X * theta;  % = [0;0;0] 

(1^2+2^2+3^2)/(2*3)           % 2.3333

% Vectorization

% Unvectorized implementation
prediction = 0.0;
for i=1:n+1,
  prediction = prediction + theta(j) * x(j);
end;

% Vectorized implementation
prediction = theta' * x;


% QUIZ
A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];

A*B
B'+A

ALFA=[16,2,3,13;5,11,10,8;9,7,6,12;4,14,15,1]
B = ALFA(:, 1:2);
B = ALFA(1:4,1:2)

A = magic(10)
x = ones(10,1)

v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end

v=A*x




v = ones(7,1);
w = [1;3;0;2;0.5;7;1]



z = 0;
for i = 1:7
  z = z + v(i) * w(i)
end

z = w' * v;

z= w * v'

A = zeros(7);
X = ones(7).*2;

for i = 1:7
  for j = 1:7
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end

