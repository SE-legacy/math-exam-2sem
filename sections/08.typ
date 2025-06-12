#import "../conf.typ": definition, theorem

#definition()[
  Функция, имеющая на отрезке непрерывную производную, называется непрерывно дифференцируемой или гладкой.
]

#theorem(
  name: "Теорема (формула интегрирования по частям)",
  breakline: true
)[
  $u(x)$ и $v(x)$ непрерывно дифференцируемая на $[a, b] ==>$
  $ limits(integral)_a^b u(x)v'(x) d x = u(x)v(x)|_a^b - limits(integral)_a^b v(x) u'(x) d x. $
][
  Т.к. $lr((u(x)v(x)), size: #125%)' = u'(x)v(x) + u(x)v'(x)$, и все функции непрерывны на $[a, b]$, а значит, и интегриуемы на $[a, b]$. По теореме о линейности интеграла и формуле Ньютона--Лейбница

  $ u(x)v(x)|_a^b = limits(integral)_a^b (u(x)v(x))' d x = limits(integral)_a^b u'(x)v(x) d x + limits(integral)_a^b u(x)v'(x) d x. $
]

#theorem(
  name: "Теорема (формула замены переменной)",
  breakline: true
)[
  $f$ непрерывна на $[a, b], #h(4pt) g$ непрерывно дифференцируема на $[alpha, beta]$ и $limits(min)_(t in [alpha, beta]) g(t) = g(alpha) = a, limits(max)_(t in [alpha, beta]) g(t) = g(beta) = b$. Тогда
  $ limits(integral)_a^b f(x) d x = limits(integral)_(alpha)^(beta) f(g(t))g'(t) d t. $
][
  Пусть $Phi$ - первообразная $f, #h(4pt) forall t in [alpha, beta] #h(4pt) lr((Phi(g(t))), size: #125%)' = Phi' lr((g(t)), size: #125%)g'(t) = f lr((g(t)), size: #125%)g'(t)$, т.е. функция $Phi compose g$ является первообразной функции $(f compose g)g'$. По формуле Ньютона--Лейбница 
  $ limits(integral)_(alpha)^(beta) f lr((g(t)), size: #125%)g'(t) d t = Phi lr((g(beta)), size: #125%) - Phi lr((g(alpha)), size: #125%) = Phi(b) - Phi(a) = limits(integral)_a^b f(x) d x. $
]
