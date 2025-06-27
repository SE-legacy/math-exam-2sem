#import "../conf.typ": theorem, consequence

#theorem(name: "Теорема (о непрерывности предела)")[
  Пусть $forall n in NN$ функция $f_n$ непрерывна в точке $x_0 in X$ и $f_n arrows f$. Тогда функция $f$ непрерывна в точке $x_0$.
][
  $forall n in NN$ справедливо следующее:
  $ abs(f(x) - f(x_0)) <= abs(f(x) - f_n (x)) + abs(f_n (x) - f_n (x_0)) + abs(f_n (x_0) - f(x_0)) <= \
  2norm(f - f_n) + abs(f_n (x) - f_n (x_0)). $

  Пусть $epsilon > 0$. Т.к. $f_n arrows f$, то $exists n_1 #h(6pt) norm(f - f_(n_1)) < epsilon/3$.

  Т.к. функция $f_(n_1)$ непрерывна в точке $x_0$, то 
  
  $ exists delta > 0 #h(6pt) forall x in X #h(6pt) (abs(x-x_0)<delta => abs(f_(n_1) (x) - f_(n_1) (x_0)) < epsilon/3). $
  Тогда $forall x in X$ при $abs(x - x_0) < delta$
  $ abs(f(x) - f(x_0)) <= 2norm(f - f_n) + abs(f_n (x) - f_n (x_0)) < 2epsilon/3 + epsilon/3 = epsilon, $
  
  т.е. функция $f$ непрерывна в. точке $x_0$.
]

#theorem(name: "Теорема (об интегрируемости предела)")[
  Пусть $forall n in NN$ функция $f_n$ непрерывна на $[a, b]$ и $f_n arrows f$. 
  Тогда функция $f$ интегрируема и 
  $ limits(integral)_a^b f(x) d x = lim_(n -> infinity) limits(integral)_a^b f_n (x) d x. $
][
  В силу теоремы о непрерывности предела функция $f$ непрерывна на $[a, b]$, и, следовательно, интегрируема. 

  $ abs(limits(integral)_a^b f_n (x) d x - limits(integral)_a^b f(x) d x) = abs(limits(integral)_a^b (f_n (x) - f(x)) d x) <= \
  <= limits(integral)_a^b abs(f_n (x) - f(x)) d x <= norm(f_n - f)(b - a) = o(1) ==> \
  limits(integral)_a^b f(x) d x = limits(lim)_(n -> infinity) limits(integral)_a^b f_n (x) d x. $
]

#consequence()[
  Пусть $forall n in NN$ функция $f_n$ непрерывна на $[a, b]$ и $f_n arrows f$. Тогда $forall x_0 in [a, b]$ последовательность

  $ F_n (x) = limits(integral)_(x_0)^x f_n (t) d t, quad x in [a, b] $

  равномерно сходится на $[a, b]$ к функции

  $ F(x) = limits(integral)_(x_0)^x f (t) d t, quad x in [a, b]. $
][]

#theorem(name: "Теорема (о дифференцируемости предела)")[
  Пусть $forall n in NN$ функция $f_n$ непрерывно дифференцируема на $[a, b]$, последовательность $(f'_n)$ равномерно сходится на $[a, b]$ к фукнции $phi$, последовательность $(f_n)$ сходится в точке $x_0 in X$.
  Тогда последовательность $(f_n)$ равномерно сходится на $[a, b]$ к функции $f$ и $forall x in [a, b] #h(6pt) f' (x) = phi(x)$.
][
  По формуле Ньютона--Лейбница

  $ f_n (x) = f_n (x_0) + limits(integral)_(x_0)^x f'_n (t) d t. $
  Пусть 
  
  $ A = limits(lim)_(n->infinity) f_n (x_0), quad F_n (x) = limits(integral)_(x_0)^x f'_n (t) d t, quad Phi(x) = limits(integral)_(x_0)^x phi(t) d t, quad x in [a, b]. $

  В силу следствия теоремы об интегрируемости предела $F_n arrows Phi$. Тогда последовательность $(f_n)$ на $[a, b]$ равномерно сходится к функции $f$ такой, что 
  
  $ f(x) colon.eq A + limits(integral)_(x_0)^x phi(t) d t, quad x in [a, b]. $

  Дифференцируя по верхнему пределу интегрирования, получим 
  
  $ f'(x) = phi(x) #h(6pt) forall x in [a, b]. $
]
