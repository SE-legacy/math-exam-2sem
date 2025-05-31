= №16. Признак Коши. Признак Даламбера

*Т. (пр. Коши)*: $forall n in NN #h(4pt) a_n >= 0, #h(4pt) overline(limits(lim)_(n-> infinity)) root(n, a_n) = alpha$.
+ $alpha < 1 ==> sum a_n$ сх-ся;
+ $alpha > 1 ==> sum a_n$ рас-ся;
+ $alpha = 1 ==>$ вопрос о сх-ти открытый.
*Док-во*:
+ $alpha < q < 1 stretch(=>)^"опр."_"верх. пред." exists n_0 #h(4pt) forall n >= n_0 #h(4pt) root(n, a_n) <= limits(sup)_(n>= n_0) root(n, a_n) < q ==> a_n < q_n$. $sum q^n$ при $0< q<1$ сх-ся $stretch(=>)^"пр."_"маж." sum a_n$ сх-ся.
+ $alpha > 1 ==>$ для беск. числа значений $n$ $root(n, a_n) >= 1 ==> a_n != o(1)$, ряд рас-ся. \
+ Для $sum 1/n$ (рас-ся) и $sum 1/(n^2)$ (сх-ся) $alpha = 1$.

*Т. (пр. Даламбера)*: $forall n in NN #h(4pt) a_n > 0, #h(4pt) limits(lim)_(n-> infinity) (a_(n+1))/(a_n) = alpha$.
+ $alpha < 1 ==> sum a_n$ сх-ся;
+ $alpha > 1 ==> sum a_n$ рас-ся;
+ $alpha = 1 ==>$ вопрос о сх-ти открытый.
*Док-во*: 
+ $alpha < q < 1 stretch(=>)^"порядк."_"св-ва пред." exists n_0 #h(4pt) forall n >= n_0 #h(4pt) (a_(n+1))/(a_n) < q = (q^(n+1))/(q^n)$. $sum q^n$ при $0< q<1$ сх-ся $stretch(=>)^"сл-е 1 из"_"пр. маж."sum a_n$ сх-ся. \
+ $alpha > 1 ==> exists n_0 #h(4pt) forall n>= n_0 #h(4pt) a_(n+1)/(a_n) > 1$, т. е. при $n >= n_0 #h(4pt) a_(n+1) > a_n ==> a_n != o(1)$, ряд рас-ся. \
+ Для $sum 1/n$ (рас-ся) и $sum 1/(n^2)$ (сх-ся) $alpha = 1$.