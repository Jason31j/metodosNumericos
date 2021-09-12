% Una implementacion del metodo de la secante para busqueda de raices en
% funciones continuas dentro de un intervalo.
%
% % Una implementacion del metodo de la secante para busqueda de raices en
% funciones continuas dentro de un intervalo.
%
% Ejemplo:
% Ejecutar las siguientes lineas dentro de la ventana de comandos:
%
% x = secante(fun, a, b, tol);
% donde los parametros corresponden: fun  -> la función a la cual calcularemos la raice(s)
%                                    a y b -> son valores iniciales
%                                    tol  -> el nivel de tolerancia al error
%
function xn = secante(fun, a, b, tol)

   fprintf('Metodo de la secante\n\n');
   i = -1;
   error = 1;
   

   if (i == -1)
     fprintf('%2i \t %f \t\n', i, a);
     i = i + 1;
     fprintf('%2i \t %f \t\n', i, b);
     i = i + 1;
   end %if
   
   while (error >= tol)
     fa = feval(fun, a);
     fb = feval(fun, b);
     xn = b - ((fb*(a - b))/(fa - fb));
     a = b;
     b = xn;
     if (i > 2)
       error = abs(b-a);
       fprintf('%2i \t %f \t %f\n', i, b, error);
     else
       fprintf('%2i \t %f \t\n', i, b);
     end %if
     
     
     i = i + 1;
   end %while
   fprintf('\n La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones\n', tol, xn, i-2);
   ezplot(fun);grid;