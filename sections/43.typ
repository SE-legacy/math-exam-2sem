#import "../conf.typ": definition

#definition()[
  Вектор-функцию $overline(f) = (f_1, dots, f_n) : RR^m → RR^n$ назовем дифференцируемой в точке $overline(x)_0$, если все функции $f_k, #h(6pt) k = 1, dots, n$, дифференцируемы в точке $overline(x)_0$.

  Дифференциалом функции $overline(f)$ назовем вектор-столбец 
  $ d overline(f)(overline(x)_0) = mat(
    d f_1(overline(x)_0);
    dots.v;
    d f_ n (overline(x)_0)
  ). $

  Матрицей Якоби отображения $overline(f)$ называют матрицу 
  
  $ D overline(f)(overline(x)_0) = mat(
    (diff f_1(overline(x)_0))/(diff x_1), dots, (diff f_1(overline(x)_0))/(diff x_m);
    dots, dots, dots;
    (diff f_n(overline(x)_0))/(diff x_1), dots, (diff f_n(overline(x)_0))/(diff x_m)
  ). $

  Введем вектор-столбец 
  
  $ d overline(x) = mat(
    d x_1; 
    dots.v; 
    d x_m
  ). $

  Тогда можно записать 
  
  $ d overline(f)(overline(x)_0) = D overline(f)(overline(x)_0) d overline(x). $

  Если $n = m$, то определитель матрицы Якоби называют якобианом и обозначают через 
  
  $ D(f_1, dots, f_m)/D(x_1, dots, x_m) (overline(x)_0). $
]

#definition()[
  Матрица Якоби называтся производной отображения $overline(f)$ в точке $overline(x)_0$ и обозначается через $overline(f)'(overline(x)_0)$.
]

