= №14. Осн. признак Вейерштрасса. Интег. признак сх-ти

$sum a_n$ --- ряд с неотр. $==> (S_n)$ неубыв. $==>$ сх-ть ряда эквивалентна условию $limits(sum)^infinity_(n=1) a_n < + infinity$.

*Т. (осн. призн. В-сса)*: Ряд с неотр. членами сх-ся $<==>$ посл. его част. сумм ограничена.\
*Док-во*: Из т. Вейерштрасса о монотонных посл-ях.

*Т. (интегр. призн. сх-ти)*: $f$ неотр. и неворзр. на $[1,+infinity) ==> limits(integral)^(+infinity)_1 f(x) d x$ и $limits(sum)f(x)$ сх-ся или расх-ся одновременно. \ 
*Док-во*: $S_n = limits(sum)^infinity_(n=1) f(x), #h(4pt) F(b) = limits(integral)^b_1 f(x) d x$. При $k = 1, 2,dots #h(4pt) f(k+1) <= limits(integral)^(k+1)_1 f(x) d x <= f(k) ==> limits(sum)^n_(k=1) f(k+1) <= limits(integral)^(n+1)_1 f(x) d x <= limits(sum)^n_(k=1) f(k) ==>  S_(n+1) - f(1) <= F(n+1) <= S_n ==> F arrow.t, S_n arrow.t ==> F=o(1)$ эквив. $S_n=o(1) ==>$ сходимость$limits(integral)^(+infinity)_1 f(x) d x$ эквив. сх-ти $limits(sum)f(x)$.
