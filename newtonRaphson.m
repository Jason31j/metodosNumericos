% Una implementacion del metodo de newRap para busqueda de raices en
% funciones continuas dentro de un intervalo.
%
% Ejemplo:
% Ejecutar las siguientes lineas dentro de la ventana de comandos:
%
% x = newRap(fun, funD, a, tol);
% donde los parametros corresponden: fun  -> la función a la cual calcularemos la raice(s)
%                                    funD -> es la primera derivada de esa función
%                                    a    -> es el valor inicial
%                                    tol  -> el nivel de tolerancia al error
%
 
function xn = newtonRaphson(fun, funD, a, tol)
   fprintf('Metodo de Newton-Raphson\n\n');
   i = 1;
   f = feval(fun, a);
   fd = feval(funD, a);
   
   if i == 1
     fprintf('Iter. \t xr \t\t ea \n');
     fprintf('%2i \t %f \t\n', i, a);
     error = 1;
   end %if
   
   xn = a - ((f)/(fd));
   a = xn;
      
   while error >= tol
         a = xn;
         xna = xn;
         
         f = feval(fun, a);
         fd = feval(funD, a);
         
         xn = a - (f/fd);
         error = abs(xn - xna);     
         
         i = i + 1;
         fprintf('%2i \t %f \t %f\n', i, xn, error);
   end %while
   fprintf('\n La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones\n', tol, xn, i);
   
   ezplot(fun);grid;
end