= №18. Преобр. Абеля. Т. о равносходимости рядов, связ. пр-ем Абеля. Признак Абеля. Признак Дирихле и признак Лейбница

*Т. (преобр. Абеля)*: $B_n = limits(sum)^n_(k=1) b_k, n>= 1 ==> limits(sum)^n_(k=1) a_k b_k = a_n B_n - limits(sum)^(n-1)_(k=1)(a_(k+1) - a_k) B_k$.\
*Док-во*: $b_1 = B_1, #h(4pt) b_2 = B_2 - B_1, dots, #h(4pt) B_n = B_n - B_(n-1)$
$limits(sum)^n_(k=1) a_k b_k = a_1 B_1 + a_2 (B_2 - B_1)+dots+a_n (B_n - B_(n-1)) = B_1 (a_1 - a_2) + dots + B_(n-1) (a_(n-1) - a_n) + B_n a_n = limits(sum)^(n-1)_(k=1) (a_k - a_(k+1)) B_k + B_n a_n$.\
*Т. (о равносходимости рядов, связ. пр-ем Абеля)*: $B_n = limits(sum)^n_(k=1) b_k, #h(4pt) (a_n B_n)$ сх-ся $==> sum a_n B_n$ и $sum B_n (a_(n+1) - a_n)$ ведут себя одинаково.\
*Т. (признак Дирихле)*: $(a_n)$ --- монотонна, и беск. малая; $B_n = limits(sum)^n_(k=1) b_k = O(1) ==> sum a_n b_n$ сх-ся.\
*Док-во*: $a_n B_n = o(1) O(1) = o(1) stretch(=>)^"пред."_"т." sum a_n B_n$ и $sum B_n (a_(n+1) - a_n)$ ведут себя одинак. 
Пусть $abs(B_k) <= M, #h(4pt) k>=1. #h(4pt) epsilon > 0$. $exists n_0 in NN #h(4pt) forall n>= n_0 #h(4pt) abs(a_n) < epsilon$,\ т. к. $a_n = o(1). #h(8pt)$
При $n >= n_0 #h(4pt) abs(limits(sum)^(n+p)_(k=n+1) (a_(k+1) - a_k)B_k) #h(8pt) <= #h(8pt) limits(sum)^(n+p)_(k=n+1) abs((a_(k+1) - a_k)) abs(B_k) <= M limits(sum)^(n+p)_(k=n+1) abs((a_(k+1) - a_k))$.
$(a_n)$ монотон. $==> limits(sum)^(n+p)_(k=n+1) abs(a_(k+1) - a_k) = abs(limits(sum)^(n+p)_(k=n+1) a_(k+1) - a_k) = abs(a_(n+p+1) - a_(n+1)) <= abs(a_(n+p+1)) + abs(a_(n+1)) < 2epsilon$, т. е. $forall n>= n_0 #h(4pt) forall p>=1 #h(4pt) abs(limits(sum)^(n+p)_(k=n+1) (a_(k+1) - a_k)B_k) < 2 M epsilon stretch(<=>)^"крит."_"Коши" sum B_n (a_(n+1) - a_n)$ сх-ся.\
*Т. (признак Абеля)*: $(a_n)$ --- монотон., и огр; $sum b_n$ сх-ся $==> sum a_n b_n$ сх-ся.\ 
*Док-во*: Пусть ряд $B^n_p = limits(sum)^(n+p)_(k=n+1) b_k$ и $abs(a_k) <= M, #h(4pt) k>=1$. По крит. Коши $forall epsilon > 0 #h(4pt) exists n_0 in NN #h(4pt) forall n>= n_0 #h(4pt) forall p in NN #h(4pt) abs(B^n_p) < epsilon$.
По преобр. Абеля $limits(sum)^(n+p)_(k=n+1) a_k b_k = a_(n+p) B^n_p - limits(sum)^(n+p)_(k=n+1) (a_(k+1) - a_k) B^n_p$.
При $n >= n_0 #h(4pt) abs(limits(sum)^(n+p)_(k=n+1) a_k b_k) = abs(a_(n+p)) abs(B^n_p) - limits(sum)^(n+p)_(k=n+1) abs((a_(k+1) - a_k)) abs(B^n_p) < M epsilon + epsilon limits(sum)^(n+p-1)_(k=n+1) abs(a_(k+1) - a_k) stretch(=>)^"мон."_("и огр." a_n) abs(limits(sum)^(n+p)_(k=n+1) a_k b_k) < M epsilon + epsilon 2 M = 3 M epsilon stretch(=>)^"кр."_"Коши" sum a_n b_n$ сх-ся.\
*Т. (признак Лейбница)*: $(a_n)$ --- монотонна, и беск. малая $==> sum (-1)^(n-1) a_n$ сх-ся. \
*Док-во*: Из признака Дирихле при $b_n = (-1)^(n-1)$.
