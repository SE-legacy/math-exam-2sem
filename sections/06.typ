#import "../conf.typ": theorem

#theorem(
  name: "Теорема (о непрерывности интеграла по верхнему пределу интегрирования)",
  breakline: true
)[
  $f in Re[a, b]$, тогда функция $F(x) = limits(integral)_a^x f(t) d t$ непрерывна на $[a, b]$.
][
  Пусть $x, x + h in [a, b], #h(6pt) M = limits(sup)_(x in [a, b]) abs(f(x))$, тогда

  $ abs(F(x + h) - F(x)) = abs(limits(integral)_(a)^(x + h) f(t) d t - limits(integral)_a^x f(t) d t) = abs(limits(integral)_(x)^(x + h) f(t) d t) <= M dot abs(h) -> 0 $ 
  
  при $h -> 0$. Тогда $F(x + h) -> F(x)$ при $h -> 0$, значит $forall x in [a, b] #h(6pt) F$ непрерывна в точке $x$.
]
