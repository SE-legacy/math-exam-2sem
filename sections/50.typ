#import "../conf.typ": definition

Пусть $L = L_overline(gamma)$ --- гладкая кривая, функция $overline(gamma)$ определена на отрезке $[a, b]$, функция $phi$ определена на отрезке $[a_1, b_1]$ и отображает его на отрезок $[a, b]$, имеет непрерывную производную, и $phi'(u) != 0$ при всех $u in [a_1, b_1]$.

Тогда функция $phi'$ сохраняет знак на отрезке $[a_1, b_1]$, и фукция $phi$ является возрастающей, если $phi'(u) > 0$, и убывающей, если $phi'(u) < 0$. Согласно правилу замены переменной в интеграле Римана имеем

$ limits(integral)_a^b f lr((gamma_1(t),gamma_2(t)), size: #125%) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t = limits(integral)_a^b f lr((overline(gamma)(t)), size: #125%) abs(overline(gamma)'(t)) d t = \
limits(integral)_(phi^-1(a))^(phi^-1(b)) f lr((overline(gamma) lr((phi(u)), size: #125%)), size: #150%) abs(overline(gamma)'lr((phi(u)), size: #125%)) phi'(u) d u. $

Если $phi'(u) > 0$, то 

$ abs(overline(gamma)'lr((phi(u)), size: #125%)) phi'(u) = abs(overline(gamma)'lr((phi(u)), size: #125%) phi'(u)) = abs((overline(gamma) compose phi)'(u)), quad phi^-1(a) = a_1, quad phi^-1(b) = b_1. $

Если же $phi'(u) < 0$, то 

$ abs(overline(gamma)'lr((phi(u)), size: #125%)) phi'(u) = - abs(overline(gamma)'lr((phi(u)), size: #125%) phi'(u)) = -abs((overline(gamma) compose phi)'(u)), quad phi^-1(a) = b_1, quad phi^-1(b) = a_1. $

Тогда в любом случае

$ limits(integral)_(phi^-1(a))^(phi^-1(b)) f lr((overline(gamma) lr((phi(u)), size: #125%)), size: #150%) abs(overline(gamma)'lr((phi(u)), size: #125%)) phi'(u) d u = limits(integral)_(a_1)^(b_1) f lr((overline(gamma) lr((phi(u)), size: #125%)), size: #150%) abs((overline(gamma) compose phi)'(u)) d u. $

Обозначим $overline(gamma)^* (u) = (overline(gamma) compose phi)(u)$. Вектор-функция $overline(gamma)^*$ непрерывно дифференцируема на отрезке $[a_1, b_1]$, и на нем производная этой функции не обращается в $(0, 0)$. Тогда вектор-функцию $overline(gamma)^*$ можно считать другим параметрическим предствлением кривой $L$.

#definition()[
  Пусть $L_overline(gamma)$, где функция $overline(gamma)$ определена на $[a, b]$, и $L_(overline(gamma)^*)$, где функция $overline(gamma)^*$ определена на $[a_1, b_1]$ --- две параметризованные гладкие кривые. Говорят, что они эквиваленты, если сущетсвует функция $phi$ определенная на отрезке $[a_1, b_1]$, отображающая его на отрезок $[a, b]$, имеющая непрерывную произодную с условием $forall u in [a_1, b_1] #h(6pt) phi'(u) != 0$, такая, что $overline(gamma)^* = (overline(gamma) compose phi)$.
]

#definition()[
  Класс всех эквивалентных параметризованных гладких кривых называется гладкой кривой. Криволинейный интеграл первого рода по гладкой кривой определяется, как интеграл по любой из параметризованной кривых, принадлежащих этому классу.
]

#definition()[
  Пусть $L_overline(gamma)$, где функция $overline(gamma)$ определена на $[a, b]$, и $L_(overline(gamma)^*)$, где функция $overline(gamma)^*$ определена на $[a_1, b_1]$ --- две параметризованные гладкие кривые. Говорят, что они положительно эквиваленты, если сущетсвует функция $phi$ определенная на отрезке $[a_1, b_1]$, отображающая его на отрезок $[a, b]$, имеющая непрерывную произодную с условием $forall u in [a_1, b_1] #h(6pt) phi'(u) > 0$, такая, что $overline(gamma)^* = (overline(gamma) compose phi)$.
]

#definition()[
  Класс всех положительно эквивалентных друг другу параметризаций называют ориентированной гладкой кривой.
]

#definition()[
  Криволинейный интеграл второго рода по ориентированной кривой определяется, как интеграл по одной из ее параметризаций. Также 
  
  $ limits(integral)_(L^+) P(x,y) d x + Q(x,y) d y = - limits(integral)_(L^-) P(x,y) d x + Q(x,y) d y. $
]