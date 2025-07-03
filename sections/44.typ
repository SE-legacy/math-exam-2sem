#import "../conf.typ": definition, theorem, equ

#definition()[
  Пусть даны функции $F: RR^(m+1) -> RR, #h(6pt) X subset RR^m, #h(6pt) Y subset RR$ и уравнение 
  
  #equ($ F(overline(x), y) = 0. $, id: <eq_iplicit_func>)
  
  Если для каждого $overline(x) in X$ найдется единственное $y = f(overline(x)) in Y$ такое, что $F(overline(x), f(overline(x))) = 0$, то говорят, что уравнение $(#ref(<eq_iplicit_func>))$ на множестве $X times Y$ определяет неявную функцию $f: X -> Y$.
]

#theorem(name: "Теорема (о неявной функции)")[
  Если функция $F$, определенная в окрестности $U$ точки $(overline(x)_0, y_0)$ такова, что

  + $F in C^((1)) (U)$, т.е. $F$ непрерывно дифференцируема на $U$;

  + $F(overline(x)_0, y_0) = 0$; 
  
  + $F'_y (overline(x)_0, y_0) != 0$.
  
  То найдутся окрестности $O(overline(x)_0), O(y_0)$ такие, что на множестве $O(overline(x)_0) times O(y_0)$ уравнение $(#ref(<eq_iplicit_func>))$ определяет непрерывно дифференцируемую функцию $f: O(overline(x)_0) -> O(y_0)$. Причем $forall overline(x) in O(overline(x)_0) #h(6pt) forall k = 1,..., m$
  
  $ f'_x_k (overline(x)) = - (F'_x_k lr((overline(x), f(overline(x))), size: #125%))/(F'_y lr((overline(x), f(overline(x))), size: #125%)). $
][]