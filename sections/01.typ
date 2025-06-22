#import "../conf.typ": definition, theorem
<perf>

#definition(breakline: true)[
  $[a,b] subset RR, quad P = P_([a,b]) = {x_k}^n_(k=0)$ называется разбиением отрезка $[a,b]$.

  $Delta k = [x_k, x_(k-1)], quad Delta x_k = x_k - x_(k-1), #h(6pt) k = overline(1\, n)$.

  $d = d(P) = limits(max)_(1<= k <= n)(Delta x_k)$ называется диаметром разбиения.

  $xi_P = {xi_k}^n_(k=1):xi_k in Delta_k$ называется системой промежуточных точек.
]

#definition(breakline: true)[
  Пусть функция $f$ определена на $[a,b]$, тогда сумма

  $ sigma(P) = sigma(f, P, xi_p) = sum^n_(k=1)f(xi_k)Delta x_k $ 
  называется интегральной сумма Римана.
]

#definition(breakline: true)[
  $I in RR$, предел $I = limits(lim)_(d(P) -> 0)sigma(P)$ называется пределом интегральных сумм Римана $<==>$

  $ forall epsilon > 0 #h(6pt) exists delta > 0 #h(6pt) forall(P, xi_P) #h(6pt) (d(P)<delta => abs(sigma(P, xi_p)-I) < epsilon) $
  $I$ обозначается, как $limits(integral)^a_b f(x)d x$, фукнцию $f$ называют интегрируемой по Риману на $[a,b]$
]

#theorem(name: "Теорема (Необходимое условие интегрируемости)")[
  Функция $f$ интегрируема на $[a,b] ==> f$ ограничена
][
  От противного. Пусть $f$ не ограничена на $[a,b], #h(6pt) P$ --- произвольное разбиение. Тогда существует такое $delta_i$, что $f$ не ограничена на нем.
  $ sigma(P) = f(xi_i)Delta x_i + A, "где" A = sum^(i_n)_(k=1, i!= k) f(xi_k)Delta x_k. \
  abs(sigma(P)) = abs(f(xi_i)Delta x_i + A) >= abs(f(xi_i)) Delta x_i - A. \
  forall M>0 #h(6pt) exists xi_i in Delta_i: abs(f(xi_i)) > (abs(A) + M)/(Delta x_i) ==> abs(sigma(P))>M ==> $
  интегральная сумма не имеет предела ($f$ не интегрируема --- противоречие). 
]
