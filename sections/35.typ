#import "../conf.typ": definition, theorem, equ 

Пусть функция $f : X -> RR$ определена на множестве $X subset RR^m$, и точка $overline(x)_0$ --- внутренняя точка области определения функции $f$. 

#definition()[
  Частной производной функции $f$ по первой переменной в точке $overline(x)_0 = (x_1^0, dots, x_m^0)$ называют предел 

  $ lim_(x_1 -> x_1^0) (f(x_1, x_2^0, dots, x_m^0) - f(x_1^0, x_2^0, dots, x_m^0))/(x_1 - x_1^0), $

  если он существует, и обозначают символом 
  
  $ (diff f)/(diff x_1) (overline(x)_0), quad "или", quad f'_(x_1) (overline(x)_0). $

  Аналогично определяются производные по остальным переменным.
]

#definition()[
  Функция $f$ называется дифференцируемой в точке $overline(x)_0$, если найдутся непрерывные в точке $overline(x)_0$ функции $phi_1, dots, phi_m$ такие, что

  #equ($ f(overline(x)) - f(overline(x)_0) = phi_1 (overline(x))(x_1 - x_1^0) + phi_2(overline(x)) (x_2 - x_2^0) + dots + phi_m (overline(x)) (x_m - x_m^0). $, id: <eq:diff_cond1>)

  Обозначим $A_k = phi_k (overline(x)_0)$. Тогда $phi_k (overline(x)) = A_k + alpha_k (overline(x))$, где функции $alpha_k$ бесконечно малые в точке $overline(x)_0$. Тогда определение эквивалентно равенствам

  #equ($ f(overline(x)) - f(overline(x)_0) = & A_1 (x_1-x_1^0) + A_2 (x_2 - x_2^0) + dots + A_m (x_m - x_m^0) + \
  & + alpha_1 (overline(x)) (x_1 - x_1^0) + alpha_2 (overline(x)) (x_2 - x_2^0) + dots + alpha_m (overline(x)) (x_m - x_m^0). $, id: <eq:diff_cond2>)

  #equ($ f(overline(x)) - f(overline(x)_0) = A_1 (x_1-x_1^0) + A_2 (x_2 - x_2^0) + dots + A_m (x_m - x_m^0) + o(abs(overline(x) - overline(x)_0)). $, id: <eq:diff_cond3>)

  Равенства $(#ref(<eq:diff_cond1>))$, $(#ref(<eq:diff_cond2>))$, $(#ref(<eq:diff_cond3>))$ называют условием дифференцируемости функции в точке $overline(x)_0$.
]

#theorem(name: "Теорема (о непрерывности дифференцируемой функции)")[
  Если функция $f$ дифференцируема в точке $overline(x)_0$, то $f$ непрерывна в этой точке.
][
  Следует из равенства $(#ref(<eq:diff_cond1>))$.
]

#theorem(name: "Теорема (о существовании частной производной у дифференцируемой функции)")[
  Если функция $f$ дифференцируема в точке $overline(x)_0$, то в этой точке у неё существуют все частные производные и при всех $k = 1, dots, m$

  $ (diff f)/(diff x_k) (overline(x)_0) = A_k, $
  
  где $A_k$ --- числа из равенства $(#ref(<eq:diff_cond2>))$.
][
  Из равенства $(#ref(<eq:diff_cond2>))$ имеем 
  
  $ f(x_1, x_2^0, dots, x_m^0) - f(x_1^0, x_2^0, dots, x_m^0) = A_1 (x_1 - x_1^0) + alpha_1 (x_1, x_2^0, dots, x_m^0) (x_1-x_1^0). $

  Поделив обе части на $x_1 - x_1^0$ и перейдя к пределу при $x_1 -> x_1^0$, получим 
  
  $ (diff f)/(diff x_1) (overline(x)_0) = A_1. $

  Аналогично доказываются равенства для частных производных по остальным переменным.
]
