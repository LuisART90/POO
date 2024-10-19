classdef Coche

    % Prueba: Crea un objeto Coche con Marca = 'Toyota' y Modelo = 'Corolla'. Acelera el coche
    % a 60 km/h y luego frena hasta detenerlo. Muestra los detalles del coche después de cada 
    % acción.

    properties
        Marca
        Modelo
        Velocidad 
    end

    methods
        function obj = Coche(marca,modelo)
        %  Constructor de la clase Coche 
            obj.Marca=marca;
            obj.Modelo=modelo;
            obj.Velocidad=0; % Es inicialmente igual a cero
        end
    
        % Método para acelerar el coche
        function obj = acelerar(obj,incremento)
                obj.Velocidad=obj.Velocidad+incremento;
                disp(['El coche se ha acelerado. Velocidad actual: ' num2str(obj.Velocidad) ' km/h'])
        end

        % Método para prenar el coche
        function obj=frenar(obj,decremento)
            obj.Velocidad=obj.Velocidad-decremento;
            if obj.Velocidad<0
                obj.Velocidad=0;        % Se evitan velocidades negativas
            end 
            disp(['El coche se ha frenado. Velocidad actual: ' num2str(obj.Velocidad) ' km/h'])
        end 
        
        function detalles(obj)
               disp(['Marca: ', obj.Marca])
               disp(['Modelo: ', obj.Modelo])
               disp(['Velocidad actual: ',  num2str(obj.Velocidad) ' km/h'])
        end 


    end
end