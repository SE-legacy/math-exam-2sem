#import "../conf.typ": definition, theorem

#definition()[
  Пусть функции $f, #h(6pt) g_i, #h(6pt) i = 1, dots, r$ являются отображениями из $RR^m$ в $RR$, определёнными в некотрой окрестности точки $overline(x)_0$ и $g_i (overline(x)_0) = 0$. Значение $f(overline(x)_0)$ называется условным максимумом (минимумом) функции $f$ при условиях связи $g_i (overline(x)) = 0 #h(6pt) i = 1, dots, r$, если существует такая окрестность $O(overline(x)_0)$, что $f(overline(x)_0)$ является наибольшим (наименьшим) значением сужения функции на множество
   
  $ O(overline(x)_0) inter {overline(x) in RR^m : g_i (overline(x)) = 0, #h(6pt) i = 1, dots, r}. $
]

#theorem(name: "Теорема (Лагранжа)")[
  Пусть функции $f$ и $g$ непрерывно дифференцируемы в некоторой окрестности точки $overline(x)_0$, $g(overline(x)_0) = 0$ и вектор-градиент $"grad" g(overline(x)_0) != 0$. Если функция $f$ имеет условный экстремум в точке $overline(x)_0$ с условием $g(overline(x)) = 0$, то существует такое число $lambda in RR$, что 
  
  $ "grad" (f - lambda g)(overline(x)_0) = 0. $
][
  Не ограничивая общности, будем считать, что 
  
  $ (diff g(overline(x)_0))/(diff x_m) != 0. $
  
  Выберем такое число $lambda in RR$, что 
  
  $ (diff f(overline(x)_0))/(diff x_m) - lambda (diff g(overline(x)_0))/(diff x_m) = 0. $
  
  Осталось доказать это равенство $forall i = 1, dots,m-1$. По теореме о неявной функции существуют такие окрестности $O(x_1^0, dots, x_(m-1)^0), #h(6pt) O(x_m^0)$, что уравнение $g(overline(x) = 0$ определяет неявную дифференцируемую функцию $phi: O(x_1^0, dots, x_(m-1)^0) -> O(x_m^0)$. В окрестности $O(x_1^0, dots, x_(m-1)^0)$ рассмотрим функцию 
  
  $ F(x_1, dots,x_(m-1)) = f(x_1, dots, x_(m-1), phi(x_1, dots,x_(m-1))). $

  Из определения условного экстремума следует, что функция $F$ имеет локальный экстремум в точке $(x_1^0, dots, x_(m-1)^0)$. По теореме Ферма $forall i = 1, dots, m-1$ имеем равенства 
  
  $ 0 = (diff F(x_1^0, dots, x_(m-1)^0))/(diff x_i) = (diff f(overline(x)_0))/(diff x_i) + (diff f(overline(x)_0))/(diff x_i) dot (diff phi(x_1^0, dots, x_(m-1)^0))/(diff x_i) = \
  = (diff f(overline(x)_0))/(diff x_i) + lambda (diff g(overline(x)_0))/(diff x_i) dot (diff phi(x_1^0, dots, x_(m-1)^0))/(diff x_i). $
  
  По теорме о неявной функции $forall i = 1, dots,m-1$
  
  $ (diff g(overline(x)_0))/(diff x_i) dot (diff phi(x_1^0, dots, x_(m-1)^0))/(diff x_i) = - (diff g(overline(x)_0))/(diff x_i). $
  
  Значит $forall i = 1, dots,m-1$
  
  $ (diff f(overline(x)_0))/(diff x_i) - lambda (diff g(overline(x)_0))/(diff x_i) = 0. $
]
