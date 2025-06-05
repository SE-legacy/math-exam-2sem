#import "../functions.typ": *

= Теорема об интегрируемости непрерывной функции. Теорема об интегрируемости монотонной функции

#theorem(name: "об интегрируемости непрерывной функции")
$f$ непр. на $[a, b] ==> f$ интегрируема на $[a, b]$. \ 
#proof
$f$ непр. на $[a, b] stretch(=>)^("Т. Кантора") f$ равномерно непр. на $[a, b]$.
Пусть $epsilon > 0 ==>$
$ exists delta > 0 forall xi', xi'' in [a, b] #h(4pt) (abs(xi' - xi'') < delta ==> abs(f(xi') - f(xi'')) < (epsilon)/(b - a) ). $
Пусть $P$ - разбиение отрезка $[a, b]$ с диаметром $d < delta$, тогда
$ M_(k) - m_(k) < (epsilon)/(b - a), M_(k) = f(xi'_(k)), m_(k) = f(xi''_(k)) ==> \
S(P) - s(P) = sum_(k = 1)^(n) (M_(k) - m_(k)) Delta x_(k) < sum_(k = 1)^(n) (epsilon)/(b - a) Delta x_(k) = (epsilon)/(b - a) (b - a) = epsilon.  stretch(=>)^"крит."_"инт–сти" f "интегрируема". $ #qed

#theorem(name: "об интегрируемости монотонной функции")
$f$ монотон. на $[a, b] ==> f$ интегрируема на $[a, b]$. \ 
#proof
Если $f = c = "const" ==> f$ интегрируема и $limits(integral)_(a)^(b) f(x) d x = c(b - a)$.

Пусть $f != "const"$ и $f arrow.t quad P = P_([a,b]) = {x_(k)}_(k = 0)^(n) quad Delta_(k) = [x_(k - 1), x_(k)] ==>$
$ S(P) - s(P) = limits(sum)_(k = 1)^(n) (M_(k) - m_(k)) Delta x_(k), M_(k) = f(x_(k)), m_(k) = f(x_(k - 1)). $
Пусть $epsilon > 0$, т.к. $f(b) != f(a) ==> (epsilon)/(f(b) - f(a)) > 0$.

$ "Пусть" d(P) < (epsilon)/(f(b) - f(a)) ==> forall k = overline(1\, n) quad Delta x_(k) < (epsilon)/(f(b) - f(a)). $
$ S(P) - s(P) = limits(sum)_(k = 1)^(n) (M_(k) - m_(k)) Delta x_(k) < limits(sum)_(k = 1)^(n) (M_(k) - m_(k)) (epsilon)/(f(b) - f(a)) =\
(epsilon)/(f(b) - f(a)) limits(sum)_(k = 1)^(n) (f(x_(k)) - f(x_(k - 1))) = (epsilon)/(f(b) - f(a)) (f(b) - f(a)) = epsilon stretch(=>)^"крит."_"инт–сти" f "интегрируема" $ #qed
