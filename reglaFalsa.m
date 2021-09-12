% Una implementacion del metodo de reglaFalsa para busqueda de raices en
% funciones continuas dentro de un intervalo.
%
% Ejemplo:
% Ejecutar las siguientes lineas dentro de la ventana de comandos:
%
% x = reglaFalsa(fun, a, b, tol);
% donde los parametros corresponden : fun -> la función a la cual calcularemos la raice(s)
%                           b ->  es el limite derecho del intervalo
%                           a -> es el limite izquierdo del intervalo
%                           tol -> el nivel de tolerancia al error

% con una tolerancia tol = 0.0001.
 
function xs = reglaFalsa(fun,a,b,tol)
   fprintf('Metodo de Regla falsa\n\n');
   i = 1;
   fa = feval(fun, a);
   fb = feval(fun, b);

   if (fa * fb) < 0 
      xs = b - ((feval(fun, b)*(a-b))/(feval(fun,a) - feval(fun, b)));
      error = abs(b - a);
      xa = xs;
      fxs = feval(fun, xs);
      if (fa * fxs) < 0
         b = xs;
      else
         a = xs;
      end %if

      fprintf('Iter. \t xr \t\t ea \n');
      fprintf('%2i \t %f \t %f\n', i, xs, error);
      
      while error >= tol
         fa = feval(fun,a);
         xs = b - ((feval(fun, b)*(a-b))/(feval(fun,a) - feval(fun, b)));
         error = abs(xs - xa);
         
         xa = xs;
         fxs = feval(fun, xs);
         if (fa * fxs) < 0
            b = xs;
         else
            a = xs;
         end %if

         i = i + 1;
         fprintf('%2i \t %f \t %f\n', i, xs, error);
      end %while
      fprintf('\n La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones\n', tol, xs, i);
   else
      disp("La solucion no esta en el intervalo");
   end %if
   ezplot(fun);grid;
end