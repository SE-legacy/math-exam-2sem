#import "../conf.typ": theorem, consequence

#theorem(
  name: "Теорема (о дифференцируемости интеграла по верхнему пределу интегрирования)",
  breakline: true
)[
  Функция $f$ интегрируема на $[a, b]$ и непрерывна в точке $x_0 in [a, b]$. Тогда функция $F(x) = limits(integral)_a^x f(t) d t$ дифференцируема в точке $x_0$, причем $F'(x_0) = f(x_0)$.
][ 
  По свойству интеграла 
  $ (F(x_0 + h) - F(x_0)) / h = 1/h limits(integral)_(x_0)^(x_0 + h) f(t) d t = 1/h limits(integral)_(x_0)^(x_0 + h) lr((f(x_0) + lr((f(t) - f(x_0)), size: #125%)), size: #150%) d t = \ 1/h limits(integral)_(x_0)^(x_0 + h) f(x_0) d t + 1/h limits(integral)_(x_0)^(x_0 + h) (f(t) - f(x_0)) d t = f(x_0) + 1/h limits(integral)_(x_0)^(x_0 + h) lr((f(t) - f(x_0)), size: #125%) d t. $ 
  Пусть $epsilon > 0$, $f$ непрерывна в точке $x_0$. Тогда $exists delta > 0 #h(6pt) forall t in [a, b]$ такого, что $abs(t - x_0) < delta$ выполнается условие $abs(f(t) - f(x_0)) < epsilon$. Тогда, если $abs(h) < delta$, то 
  $ abs(1/h limits(integral)_(x_0)^(x_0 + h) (f(t) - f(x_0)) d t) <= 1/abs(h) dot abs(h) dot epsilon = epsilon ==> limits(lim)_(h -> 0) 1/h limits(integral)_(x_0)^(x_0+h) (f(t) - f(x_0)) d t = 0. $
  Тогда существует предел $limits(lim)_(h -> 0) (F(x_0 + h) - F(x_0)) / h = f(x_0)$, т.е. $F'(x_0) = f(x_0)$.
]
#consequence()[
  Функция $f$ непрерывна на $[a, b]$ $==>$ $f$ имеет первообразную на $[a, b]$.
][]

#theorem(
  name: "Теорема (формула Ньютона-Лейбница)",
  breakline: true
)[
  Функция $f$ непрерывна на $[a, b] ==> limits(integral)_a^b f(x) d x = Phi(b) - Phi(a)$, где $Phi$ - произвольная первообразная $f$.
][ 
  По предыдущей теореме, $Phi(x) = limits(integral)_a^x f(t) d t + C$, где $C = "const"$.

  Пусть сначала $x = a$, а потом $x = b$. Тогда 
  $ Phi(a) = limits(integral)_a^a f(t) d t + C = 0 + C = C, quad Phi(b) = limits(integral)_a^b f(t) d t + C ==> limits(integral)_a^b f(x) d x = Phi(b) - Phi(a). $
]

*Замечание*:
Формулулу Ньютона--Лейбница часто записывают 
$limits(integral)_a^b f(x) d x = Phi(x)|_a^b$, где $Phi(x) |_a^b = Phi(b) - Phi(a)$.
