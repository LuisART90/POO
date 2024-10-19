classdef Triangulo
% Calcular el área y el tipo de triángulo.
% Se crea una clase llamada triángulo con las siguientes propiedades
    properties
        Lado1
        Lado2
        Lado3
    end

    methods
        % Se crea un constructor que inicialice los tres lados
        function obj = Triangulo(lado1,lado2,lado3)
            obj.Lado1=lado1;
            obj.Lado2=lado2;
            obj.Lado3=lado3;
        end
        
        % Definir los siguientes métodos
        function obj = TipoTriangulo(obj,Lado1,Lado2,Lado3)
            if (Lado1==Lado2) && (Lado2==Lado3)
                TipoTriangulo='equilatero';
            elseif (Lado1~=Lado2) && (Lado2~=Lado3) && (Lado1~=Lado3)
                TipoTriangulo='escaleno';
            else
                TipoTriangulo='isosceles';
            end 
            disp(['El triángulo es de tipo: ' TipoTriangulo])
        end

        function obj=AreaTriangulo(obj)
            Semiperimetro=(obj.Lado1+obj.Lado2+obj.Lado3)/2;
            Area=sqrt(Semiperimetro*(Semiperimetro-obj.Lado1)*(Semiperimetro-obj.Lado2)*(Semiperimetro-obj.Lado3));
            disp(['El área del triángulo es: ' num2str(Area) ' cm2'])
        end
        end
end
