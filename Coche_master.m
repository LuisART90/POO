
close all
clear
clc

% Crear un objeto de la clase Coche con Marca 'Toyota' y Modelo 'Corolla'
miCoche = Coche('Toyota', 'Corolla');

% Mostrar los detalles iniciales del coche
miCoche.detalles();

% Acelerar el coche a 60 km/h
miCoche = miCoche.acelerar(60);

% Frenar el coche en 30 km/h
miCoche = miCoche.frenar(30);

% Frenar el coche en 40 km/h (esto debería llevar la velocidad a 0)
miCoche = miCoche.frenar(40);

% Mostrar los detalles finales del coche
miCoche.detalles();
