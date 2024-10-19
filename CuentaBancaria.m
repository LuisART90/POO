classdef CuentaBancaria
    % Simular una cuenta bancaria con operaciones de depósito y retiro. 
    properties
        NombreTitular
        Saldo
    end

    methods
        function obj = CuentaBancaria(Nombretitular)
            % Crea un constructor que reciba el nombre del titular y un saldo inicial.
            obj.NombreTitular=(Nombretitular);
            obj.Saldo=1000;
        end

        % Define los siguientes métodos:
        % Depositar
        function obj=Deposito(obj,CantidadDeposito)
            disp(['Saldo inicial: ' num2str(obj.Saldo) ' pesos'])
            obj.Saldo=obj.Saldo+CantidadDeposito;
            disp(['El nuevo saldo es: ' num2str(obj.Saldo) ' pesos'])
        end
        
        % Retirar 
        function obj=Retiro(obj,CantidadRetiro)
            if obj.Saldo-CantidadRetiro<0
                disp('Saldo insuficiente')
            else 
                obj.Saldo=obj.Saldo-CantidadRetiro;
                disp(['El nuevo saldo es: ' num2str(obj.Saldo) ' pesos'])
            end

         % Consultar saldo 
        function consultarSaldo(obj)
            disp(['El saldo actual de la cuenta es: $', num2str(obj.Saldo)]);
        end

        end 
    end
end