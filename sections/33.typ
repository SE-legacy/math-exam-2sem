#import "../conf.typ": definition, theorem 

#definition()[
  Пусть вектор-функция $overline(f) = (f_1, dots, f_k)$ определена на отрезке $[a, b]$. Функция $overline(f)$ называется интегрируемой на отрезке $[a, b]$, если ее координатные функции $f_1, dots, f_k$ интегриуемы 
  на этом отрезке. При этом полагают 
  
  $ limits(integral)_a^b overline(f) (x) d x = (limits(integral)_a^b f_1 (x) d x, dots, limits(integral)_a^b f_k (x) d x). $
]

#theorem(name: "Теорема (оценка модуля интеграла)")[
  Пусть функция $overline(f)$ интегрируема на отрезке $[a, b]$. Тогда функция $abs(overline(f))$ интегрируема и 
  
  $ abs(limits(integral)_a^b overline(f) (x) d x) <= limits(integral)_a^b abs(overline(f) (x)) d x. $
][
  Пусть $overline(y) = (y_1, dots, y_k)$, где 
  
  $ y_1 = limits(integral)_a^b f_1 (x) d x, quad dots, quad y_k = limits(integral)_a^b f_k (x) d x. $

  Тогда 
  
  $ abs(overline(y))^2 = y_1^2 + dots + y_k^2 = y_1 limits(integral)_a^b f_1 (x) d x + dots + y_k limits(integral)_a^b f_k (x) d x =  limits(integral)_a^b (y_1 f_1 (x) + dots + y_k f_k (x)) d x. $

  В силу неравенства Коши--Буянковского--Шварца 
  
  $ abs(y_1 f_1 (x) + dots + y_k f_k (x)) <= abs(overline(y)) dot abs(overline(f) (x)) ==> \
  limits(integral)_a^b (y_1 f_1 (x) + dots + y_k f_k (x)) d x <= abs(overline(y)) limits(integral)_a^b abs(overline(f) (x)) d x ==> \
  abs(overline(y))^2 <= abs(overline(y)) limits(integral)_a^b abs(overline(f) (x)) d x. $
  
  Остальное очевидно.
]