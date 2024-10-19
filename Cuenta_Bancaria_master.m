
close all 
clear 
clc

% Crear un objeto de la clase Cuenta bancaria con nombre del titular
miCuenta=CuentaBancaria('Luis Arturo');

% Depositar 300 pesos en la cuenta
miCuenta=miCuenta.Deposito(300);

% Retirar 400 pesos den al cuenta
miCuenta=miCuenta.Retiro(400);

% Retirar 1000 pesos en la cuenta
miCuenta=miCuenta.Retiro(1000);

% Consultar el saldo