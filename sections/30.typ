#import "../conf.typ": definition, theorem

#definition()[
  Отображение вида $overline(f) : X -> RR^k$, где $X subset RR^m, #h(6pt) m > 1, #h(6pt) k > 1$, называют вектор фунцией векторного аргумента.
]

#definition(name: "Определение (предела по Коши)")[
  Пусть $overline(x)_0$ --- предельная точка области определения функции $overline(f) : X -> RR^k, #h(6pt) overline(A) in RR^k$.
  Вектор $overline(A)$ называют пределом функции $overline(f)$ в точке $overline(x)_0$ и обозначают символом 
  
  $ limits(lim)_(overline(x) -> overline(x)_0) overline(f) (overline(x)) = overline(A), $
  
  если

  $ forall epsilon > 0 #h(6pt) exists delta > 0 #h(6pt) forall overline(x) in D(overline(f)) #h(6pt) (0 < abs(overline(x) - overline(x)_0) < delta => abs(overline(f) (overline(x)) - overline(A)) < epsilon). $
]

#definition(name: "Определение (предела по Гейне)")[
  Пусть $overline(x)_0$ --- предельная точка области определения функции $overline(f) : X -> RR^k, #h(6pt) overline(A) in RR^k$. Вектор $overline(A)$ называют пределом функции $overline(f)$ в точке $overline(x)_0$, если для любой последовательности $(overline(x)_n)$ точек, принадледащих $D(overline(f))$, удовлетворяющей условиям: $overline(x)_n != overline(x)_0, #h(6pt) overline(x)_n -> overline(x)_0$, имеет место

  $ overline(f)(overline(x)_n) -> A. $
]

#theorem()[
  Определение предела по Коши равносильно определению предела по Гейне.
][]

#theorem()[
  $ lim_(overline(x) -> overline(x)_0) overline(f)(overline(x)) = overline(A) = (A_1, dots, A_k) <==> forall i = 1, dots, k #h(6pt) lim_(overline(x) -> overline(x)_0) overline(f)_i (overline(x)) = overline(A)_i. $
][]

#definition(name: "Определение (непрерывности по Коши)")[
  Функция $overline(f)$ называется непрерывной в точке $overline(x)_0$, если

  $ forall epsilon > 0 #h(6pt) exists delta > 0 #h(6pt) forall overline(x) in D(overline(f)) #h(6pt) (abs(overline(x) - overline(x)_0) < delta => abs(overline(f) (overline(x)) - overline(f) (overline(x)_0)) < epsilon). $
]

#definition(name: "Определение (непрерывности по Гейне)")[
  Функция $overline(f)$ назвается непрерывной в точке $overline(x)_0$, если для любой последовательности $(overline(x)_n)$ точек, принадледащих $D(overline(f))$, удовлетворяющей условию $overline(x)_n -> overline(x)_0$, имеет место

  $ overline(f)(overline(x)_n) -> overline(f) (overline(x)_0). $
]

#theorem()[
  Определение непрерывности по Коши равносильно определению непрерывности по Гейне.
][]

#theorem()[
  Функция $overline(f) = (f_1, dots, f_k)$ непрерывна в точке $overline(x)_0$ тогда и только тогда, когда $forall i = 1, dots, k$ функции $f_i$ непрерывны в ней.
][]

#definition()[
  Функция $overline(f)$ непрерывна на множестве $X$, если $forall overline(x) in XX$ функция $overline(f)$ непрерывна в точке $overline(x)$.
]

#definition()[
  Функция $overline(f)$ называется равномерно непрерывной на множестве $X$, если 
  
  $ forall epsilon > 0 #h(6pt) exists delta = delta(epsilon) > 0 #h(6pt) forall overline(x) in D(overline(f)) #h(6pt) forall overline(x)^(prime) in D(overline(f)) #h(6pt) (abs(overline(x) - overline(x)^(prime)) < delta => abs(overline(f) (overline(x)) - overline(f) (overline(x)^(prime))) < epsilon). $
]

#theorem(name: "Теорема (Кантора)")[
  Пусть функция $overline(f)$ непрерывна на множестве $X$ и множество $X$ --- компакт. Тогда функция $overline(f)$ равномерно непрерывна на $X$.
][
  От противного. Пусть функция $f$ непрерывна на $X$, но не равномерно непрерывна на нем.
  
  $ exists epsilon_0 > 0 #h(6pt) forall delta > 0 #h(6pt) exists  overline(x)', overline(x)'' in X  #h(6pt) (abs(overline(x)' - overline(x)'') < delta and abs(overline(f)(overline(x)') - overline(f)(overline(x)'')) >= epsilon_0). $
  
  Пусть $delta_n = 1/n$ и $forall n in NN$ найдем $overline(x)'_n, overline(x)''_n$ такие, что

  $ abs(overline(x)'_n - overline(x)''_n) < 1/n, quad abs(overline(f)(overline(x)'_n) - overline(f)(overline(x)''_n)) >= epsilon_0. $
  
  Т.к. $X$ --- компакт, то найдется такая последовательность $overline(x)'_k_n -> overline(x)_0, #h(6pt) overline(x)_0 in X$, и, очевидно, $overline(x)''_k_n -> overline(x)_0, #h(6pt) overline(x)_0 in X$. Т.к. функция $overline(f)$ непрерывна на $X$. Тогда 
  
  $ overline(f)(overline(x)'_k_n) -> overline(f)(overline(x)_0), quad overline(f)(overline(x)''_k_n) -> overline(f)(overline(x)_0). $

  Тогда $overline(f)(overline(x)'_k_n) - overline(f)(overline(x)''_k_n) -> 0$, что противоречит условию $abs(overline(f)(overline(x)'_n) - overline(f)(overline(x)''_n)) >= epsilon_0$.
]
