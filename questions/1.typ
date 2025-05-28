= №1. Опр. интегральной суммы Римана и интеграла Римана. Необх. условие интегрируемости.
$[a,b] subset RR; #h(4pt) P = P_([a,b]) = {x_k}^n_(k=0)$ наз. разбиением отрезка $[a,b]$. \
$Delta k = [x_k, x_(k-1)], #h(4pt) Delta x_k = x_k - x_(k-1), #h(4pt) k = overline(1\, n)$.\
$d = d(P) = limits(max)_(1<= k <= n)(Delta x_k)$ наз. диаметром разбиения\
$xi_P = {xi_k}^n_(k=1):xi_k in Delta_k$ наз. системой промежуточных точек

Пусть $f$ опр. на $[a,b], #h(4pt) sigma(P) = sigma(f, P, xi_p) = limits(sum)^n_(k=1)f(xi_k)Delta x_k$ наз. интегральной сумма Римана.\
$I in RR, I = limits(lim)_(d(P) -> 0)sigma(P)$ наз. пределом инт. сумм Римана $<==>$\
$forall epsilon>0 #h(4pt) exists delta>0 #h(4pt) forall(P, xi_P) #h(4pt) (d(P)<delta => abs(sigma(P, xi_p)-I) < epsilon)$. Обозн. $I = limits(integral)^a_b f(x)d x$, $f$ называют интегрируемой по Риману на $[a,b]$

*Т. (необх. усл. интегрируемости)*: $f$ интегр. на $[a,b] ==> f$ ограничена \
*Док-во*: От противного. Пусть $f$ не огр. на $[a,b]$, $P$ --- произв. разб $==> exists delta_i: f$ не огр. на нем. $sigma(P) = f(xi_i)Delta x_i + A$, где $A = limits(sum)^(i_n)_(k=1, i!= k) f(xi_k)Delta x_k$. #h(4pt) $abs(sigma(P)) = abs(f(xi_i)Delta x_i + A) >= abs(f(xi_i))Delta x_i - A$.\
$forall M>0 #h(4pt) exists xi_i in Delta_i:abs(f(xi_i))> (abs(A) + M)/(Delta x_i) ==> abs(sigma(P))>M ==>$ инт. сумма не имеет предела ($f$ не интегр. --- противоречие).