#import "../conf.typ": theorem

#theorem()[
  Пусть функция $f$ интегрируема в прямоугольнике $P = [a,b] times [c,d]$ и для любого $x in [a,b]$ существует однократный интеграл 

  $ I(x) = limits(integral)_c^d f(x,y) d y. $

  Тогда существует повторный интеграл 

  $ limits(integral)_a^b I(x) d x = limits(integral)_a^b d x limits(integral)_c^d f(x,y) d y, $

  и справедливо равенство

  $ limits(integral.double)_P f(x,y) d x d y = limits(integral)_a^b d x limits(integral)_c^d f(x,y) d y. $
][
  Разобьем прямоугольник $P$ на $n dot p$ прямоугольников 
  
  $ P_(k l) = [x_(k-1), x_k] times [y_(l-1), y_l], quad (k = 1, dots,n; l = 1, dots,p), \
  a = x_0 < dots < x_n = b, quad c = y_0 < dots < y_p = d. $
  
  Пусть $Delta P_(k l) = Delta x_k dot Delta y_l = (x_k - x_(k-1)) dot (y_l - y_(l-1))$, $Delta$ --- диаметр разбиения, 
  
  $M_(k l) = limits(sup)_(P_(k l)) f(x, y), m_(k l) = limits(inf)_(P_(k l)) f(x, y)$, $S$ и $s$ --- верхняя и нижняя суммы Дарбу функции $f$. Тогда всюду на прямоугольнике $P_(k l)$ 
  
  $ m_(k l) <= f(x,y) <= M_(k l). $
  
  Фиксируем произвольное $xi_k in [x_(k-1), x_k]$ и, положив в неравенстве $x = xi_k$, проинтегрируем его по $y in [y_(l-1), y_l]$. Получим 
  
  $ m_(k l) Delta y_l <= limits(integral)_(y_(l-1))^y_l f(xi_k, y) d y <= M_(k l) Delta y_l. $
  
  Умножим все части последнего неравенства на $Delta x_k$, просуммируем полученные нераванества по всем $l = 1, dots, p$, а затем по всем $k = 1, dots, n$. Получим
  
  $ s = limits(sum)_(k=1)^n limits(sum)_(l=1)^p m_(k l) Delta x_k Delta y_l <= limits(sum)_(k=1)^n I(xi_k) Delta x_k <= limits(sum)_(k=1)^n limits(sum)_(l=1)^p M_(k l) Delta x_k Delta y_l = S. $
  
  Пусть $Delta -> 0$. При этом $s$ и $S$ стремятся к двойному интегралу, тогда существует предел среднего члена неравенства, равный тому же двойному интегралу 
  
  $ limits(integral.double)_P f(x,y) d x d y. $
  
  Этот предел по определению однократного интеграла равен
  
  $ limits(integral)_a^b I(x) d x = limits(integral)_a^b d x limits(integral)_c^d f(x,y) d y. $
]

#theorem()[
  Пусть множество $D$ является трапецией первого рода. Если функция $f$ интегрируема на $D$ и для любого $x in [a,b]$ существует однократный интеграл 
  
  $ I(x) = limits(integral)_(phi_1 (x))^(phi_2 (x)) f(x, y) d y. $
  
  то существует повторный интеграл 
  
  $ limits(integral)_a^b d x limits(integral)_(phi_1 (x))^(phi_2 (x)) f(x, y) d y = limits(integral)_a^b I(x) d x, $
  
  и справедливо 
  
  $ limits(integral.double)_D f(x,y) d x d y = limits(integral)_a^b d x limits(integral)_(phi_1 (x))^(phi_2 (x)) f(x, y) d y. $
][
  Заключим множество $D$ в некоторый прямоугольник
  
  $ P = {(x,y) in RR^2 : x in [a,b], #h(6pt) y in [c,d]}, $
  
  и рассмотрим функцию
  
  $ F(x, y) = cases(
    f(x,y)\, #h(6pt) & x in D\;, 
    0\, & x in P \\ D.
  ) $
    
  По свойствам интеграла 
  
  $ limits(integral.double)_D f(x,y) d x d y = limits(integral.double)_P F(x,y) d x d y. $
  
  Применяя предыдущую теорему к функции $F$ и учитывая, что 
  
  $ limits(integral)_c^d F(x,y) d y = limits(integral)_(phi_1 (x))^(phi_2 (x)) F(x, y) d y = limits(integral)_(phi_1 (x))^(phi_2 (x)) f(x, y) d y, $
  
  получим требуемое неравенство.
]

Если поменять $x$ и $y$, то можно сформулировать аналогичную теорему для трапеции второго рода. А если фигура не является ни трапецией первого, ни трапецией второго рода, то часто можно фигуру разбить на конечное число трапеций первого и второго рода и воспользоваться свойством аддитивности интеграла.
