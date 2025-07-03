#import "../conf.typ": definition, theorem, consequence

#definition()[
  Пусть функция $overline(f) : RR -> RR^k, #h(6pt) k > 1$, и точка $t_0$ --- внутренняя точка области определения функции $overline(f)$. Функция $overline(f)$ называется дифференцируемой в точке $t_0$, если существует непрерывная в точке $t_0$ функция $overline(A)$ такая, что 

  $ overline(f) (t) - overline(f) (t_0) = overline(A) (t) dot (t - t_0). $
]

#theorem(name: "Теорема (о непрерывности дифференцируемой функции)")[
  Если функция $overline(f)$ дифференцируема в точке $t_0$, то функция $overline(f)$ непрерывна в точке $t_0$.
][]

#theorem()[
  Функция $overline(f) = (f_1, dots, f_k)$ дифференцируема в точке $t_0$ тогда и только тогда, когда все её координатные функции $f_1, dots, f_k$ дифференцируемы в точке $t_0$, причём $overline(f)' (t_0) = (f'_1 (t_0), dots, f'_k (t_0))$.
][]

#consequence(name: "Следствие 1")[
  Если функции $overline(f)$ и $overline(g)$ дифференцируемы в точке $t_0$, то их сумма, разность, произведение на число и скалярное произведение дифференцируемы в точке $overline(x)_0$, причём

  $ (overline(f) plus.minus overline(g))' (t_0) = overline(f)' (t_0) plus.minus overline(g)' (t_0); quad (overline(lambda f)') (t_0) = lambda overline(f)' (t_0), #h(6pt) lambda in RR; \
  (overline(f) dot overline(g))' (t_0) = overline(f)' (t_0) dot overline(g) (t_0) + overline(f) (t_0) dot overline(g)' (t_0). $
][]

#consequence(name: "Следствие 2")[
  Если функция $overline(f)$ дифференцируема в точке $t_0$, а скалярная функция $g$ дифференцируема в точке $u_0$ и $g(u_0) = t_0$, то композиция $overline(f) compose g$ дифференцируема
  в точке $u_0$ и 
  
  $ (overline(f) compose g)' (u_0) = overline(f)' (t_0) dot g' (u_0). $
][]

#theorem(name: "Теорема (локальная формула Тейлора)")[
  Пусть функция $overline(f)$ $n$-дифференцируема в точке $t_0$, тогда

  $ overline(f) (t) = sum_(m=1)^n (overline(f)^((m)) (t_0))/m! (t-t_0)^m + overline(epsilon) (t) (t-t_0)^n, $

  где $overline(epsilon) (t) -> overline(0)$ при $t -> t_0$.
][]

#theorem(name: "Теорема (неравенство Лагранжа)")[
  Пусть функция $overline(f)$ непрерывна на отрезке $[a, b]$ и дифференцируема на интервале $(a, b)$. Тогда найдется точка $xi in (a,b)$ такая, что

  $ abs(overline(f) (b) - overline(f) (a)) <= abs(overline(f)' (xi))(b-a). $
][
  Если $overline(f) (a) = overline(f) (b)$, неравенство очевидно.

  Пусть $overline(f) (a) != overline(f) (b)$ и 
  
  $ overline(e) = (overline(f) (b) - overline(f) (a))/abs(overline(f) (b) - overline(f) (a)). $

  Тогда $abs(overline(e)) = 1$ и 
  
  $ abs(overline(f) (b) - overline(f) (a)) = (overline(f) (b) - overline(f) (a), overline(e)) = (overline(f) (b), overline(e)) - (overline(f) (a), overline(e)). $

  Введём скалярную функцию $g(t) = (overline(f) (t), overline(e))$. Для неё выполняется условие теоремы Лагранжа, значит найдется точка $xi in (a, b)$ такая, что

  $ g(b) - g(a) = g' (xi)(b-a) = (overline(f)' (xi), overline(e))(b-a) <= abs(overline(f)' (xi))(b-a). $
]
