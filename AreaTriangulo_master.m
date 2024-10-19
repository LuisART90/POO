
close all
clear 
clc

% Se definen las longitudes de cada uno de los lados del triángulo
L1=10;  % Lado 1
L2=10;  % Lado 2
L3=10;  % Lado 3

% Se crea el objeto de la clase
triangulo=Triangulo(L1,L2,L3);

% Determinar el tipo de triángulo que es
triangulo=triangulo.TipoTriangulo(L1,L2,L3);

% Se calcula el área del triángulo
tringulo=triangulo.AreaTriangulo();