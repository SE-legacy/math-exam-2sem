#import "../conf.typ": definition, theorem
<perf>

#definition(breakline: true)[
  $[a,b] subset RR, #h(4pt) P = P_([a,b]) = {x_k}^n_(k=0)$ называется разбиением отрезка $[a,b]$.

  $Delta k = [x_k, x_(k-1)], #h(4pt) Delta x_k = x_k - x_(k-1), #h(4pt) k = overline(1\, n)$.

  $d = d(P) = limits(max)_(1<= k <= n)(Delta x_k)$ называется диаметром разбиения.

  $xi_P = {xi_k}^n_(k=1):xi_k in Delta_k$ называется системой промежуточных точек.
]

#definition(breakline: true)[
Пусть $f$ опр. на $[a,b]$ 

$ sigma(P) = sigma(f, P, xi_p) = sum^n_(k=1)f(xi_k)Delta x_k $ 
называется интегральной сумма Римана.
]

#definition(breakline: true)[
$I in RR, I = limits(lim)_(d(P) -> 0)sigma(P)$ называется пределом интегральных сумм Римана $<==>$

$ forall epsilon > 0 #h(4pt) exists delta > 0 #h(4pt) forall(P, xi_P) #h(4pt) (d(P)<delta => abs(sigma(P, xi_p)-I) < epsilon) $
Обозн. $I = limits(integral)^a_b f(x)d x, #h(4pt) f$ называют интегрируемой по Риману на $[a,b]$
]

#theorem(name: "Теорема (Необходимое условие интегрируемости)")[
$f$ интегрируема на $[a,b] ==> f$ ограничена
][
  От противного. Пусть $f$ не ограничена на $[a,b], #h(4pt) P$ --- произвольное разбиение. Тогда существует такое $delta_i$, что $f$ не ограничена на нем.
  $ sigma(P) = f(xi_i)Delta x_i + A, "где" A = sum^(i_n)_(k=1, i!= k) f(xi_k)Delta x_k. \
  abs(sigma(P)) = abs(f(xi_i)Delta x_i + A) >= abs(f(xi_i)) Delta x_i - A. \
  forall M>0 #h(4pt) exists xi_i in Delta_i: abs(f(xi_i)) > (abs(A) + M)/(Delta x_i) ==> abs(sigma(P))>M ==> $
  интегральная сумма не имеет предела ($f$ не интегрируема --- противоречие). 
]
