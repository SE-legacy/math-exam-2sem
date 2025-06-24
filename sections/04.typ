#import "../conf.typ": theorem

#theorem(
  name: "Теорема (об интегрируемости непрерывной функции)",
  breakline: true
)[
  Функция $f$ непрерывна на $[a, b] ==> f$ интегрируема на $[a, b]$.
][
  $f$ непрерывна на $[a, b] ==> $ по теореме Кантора $f$ равномерно непрерывна на $[a, b]$.

  Пусть $epsilon > 0$. Тогда

  $ exists delta > 0 #h(6pt) forall xi', xi'' in [a, b] #h(6pt) (abs(xi' - xi'') < delta ==> abs(f(xi') - f(xi'')) < epsilon/(b - a) ). $

  Пусть $P$ --- разбиение отрезка $[a, b]$ с диаметром $d < delta$, тогда

  $ M_k - m_k < epsilon/(b - a), quad M_k = f(xi'_k), quad m_k = f(xi''_k) ==> \
  S(P) - s(P) = sum_(k = 1)^n (M_k - m_k) Delta x_k < sum_(k = 1)^n epsilon/(b - a) Delta x_k = epsilon/(b - a) (b - a) = epsilon. $ 
  
  По критерию интегрируемости $f$ интегрируема.
]

#theorem(
  name: "Теорема (об интегрируемости монотонной функции)",
  breakline: true
)[
  Функция $f$ монотоннна на $[a, b] ==> f$ интегрируема на $[a, b]$.
][ 
  Если $f = c = "const"$, то $f$ интегрируема и $limits(integral)_a^b f(x) d x = c(b - a)$.

  Пусть $f != "const"$ и $f arrow.t, #h(6pt) P = P_([a,b]) = {x_k}_(k = 0)^n, #h(6pt) Delta_k = [x_(k - 1), x_k] ==>$
  $ S(P) - s(P) = sum_(k = 1)^n (M_k - m_k) Delta x_k, quad M_k = f(x_k), quad m_k = f(x_(k - 1)). $
  Пусть $epsilon > 0$, т.к. $f(b) != f(a)$, то $epsilon/(f(b) - f(a)) > 0$.

  Пусть $d(P) < epsilon/(f(b) - f(a))$, тогда $forall k = 1, dots, n #h(6pt) Delta x_k < epsilon/(f(b) - f(a)). $
  $ S(P) - s(P) = sum_(k = 1)^n (M_k - m_k) Delta x_k < sum_(k = 1)^n (M_k - m_k) epsilon/(f(b) - f(a)) = \
  = epsilon/(f(b) - f(a)) sum_(k = 1)^n lr((f(x_k) - f(x_(k - 1))), size: #125%) = epsilon/(f(b) - f(a)) lr((f(b) - f(a)), size: #125%) = epsilon $ 
  
  По критерию интегрируемости $f$ интегрируема.
]
