# metodosNumericos
primer protecto de metodos numericos, desarrollando los métodos  de regla falsa, Newtton-Raphson y el de la secante.
grupo: Jesson Grajales 4-828-626

Documentación

1.	Método de regla falsa:
•	reglaFalsa.m es el archivo con la función que se ejecuta con el objetivo de aproximarse a la raíz de la función deseada.
•	Los requisitos antes de llamar la función son: haber declarado la función matemática a la que queramos encontrar las raíces.
•	Luego de esto podremos llamar la función usando la instrucción: reglaFalsa(fun, a, b, tol) en donde los parámetros corresponden : 
  *	fun que es la función a la cual calcularemos la raíz. 
  *	a que es el límite izquierdo del intervalo.
  *	b que es el límite derecho del intervalo. 
  *	tol que el nivel de tolerancia al error expresado en decimales.

2.	Método de Newton-Raphson:
•	El archivo newtonRaphson.m es en donde se encuentra la función que se ejecuta con el objetivo de aproximarse a la raíz de la función deseada.
•	Los requisitos antes de llamar la función son: haber declarado la función matemática a la que queramos encontrar las raíces.
•	Luego de esto podremos llamar la función usando la instrucción: newtonRaphson(fun, funD, a, tol), en donde los parámetros corresponden : 
  *	fun que es la función matemática a la cual calcularemos la raíces.
  *	 funD que es la primera derivada de la función matemática de fun.
  *	a que es el límite izquierdo del intervalo.  
  *	tol que el nivel de tolerancia al error expresado en decimales.
  
3.	Método de la secante:
•	El archivo secante.m es en donde se encuentra la función que se ejecuta con el objetivo de aproximarse a la raíz de la función deseada.
•	Los requisitos antes de llamar la función son: haber declarado la función matemática a la que queramos encontrar las raíces.
•	Luego de esto podremos llamar la función usando la instrucción: secante(fun, a, b, tol), en donde los parámetros corresponden : 
  *	fun que es la función matemática a la cual calcularemos la raíces.
  *	A y b que son los valores iniciales.  
  *	tol que es el nivel de tolerancia al error absoluto expresado en decimales.
 
