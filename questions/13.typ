= №13. Т. об арифм. действиях над сх-ся рядами. Абс. сходимость числ. рядов, связь со сх-ю

*Т. (об арифм. действиях над сх-ся рядами)*: $sum a_n, sum b_n$ сх-ся, и $limits(sum)^infinity_(n=1) a_n = A, limits(sum)^infinity_(n=1) b_n = B, lambda in RR ==> sum(a_n + b_n), sum lambda a_n$ сх-ся $limits(sum)^infinity_(n=1)(a_n + b_n) = A+B, limits(sum)^infinity_(n=1) lambda a_n = lambda A$ \
*Док-во*: $limits(sum)^infinity_(n=1) (a_n+b_n) = limits(lim)_(n->infinity)limits(sum)^n_(n=1)(a_n+b_n) = limits(lim)_(n->infinity) limits(sum)^n_(k=1)a_k + limits(lim)_(n->infinity) limits(sum)^n_(k=1) b_k = A+B$. \
$limits(sum)^infinity_(n=1) lambda a_n = limits(lim)_(n->infinity)limits(sum)^n_(n=1)lambda a_n = lambda limits(lim)_(n->infinity) limits(sum)^n_(k=1)a_k = lambda A$

$sum a_n$ абс. сх-ся $<==> sum abs(a_n)$ сх-ся.

*Т. (о сх-ти абс. сх-ся ряда)*: $sum a_n$ абс. сх-ся $==> sum a_n$ сх-ся. \
*Док-во*: $abs(limits(sum)^(n+p)_(k=n+1) a_k) <= limits(sum)^(n+p)_(k=n+1) abs(a_k) stretch(=>)^"кр. Коши"_"cх-ти ряда"$ $sum a_n$ сх-ся. 
