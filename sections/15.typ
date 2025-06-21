*Опр.* $a_n = O(b_n) <==> exists C>0 #h(4pt) forall n in NN #h(4pt) abs(a_n) = C abs(b_n).$

*Т. (пр. мажорации)*: $forall n in NN #h(4pt) a_n >= 0, #h(4pt) b_n >=0, #h(4pt) a_n = O(b_n), #h(4pt) limits(sum)^infinity_(n=1) b_n < + infinity$ \
*Док-во*: $exists C>0 #h(4pt) forall n in NN #h(4pt) 0<= a_n <= C b_n ==> 0 <= limits(sum)^n_(k=1) a_k <= C limits(sum)^n_(k=1) b_k stretch(=>)^"lim"_(n-> infinity) 0<= limits(sum)^infinity_(n=1) a_n <= C limits(sum)^infinity_(n=1) b_n < + infinity$. \
*Cл-е 1.* $forall n in NN #h(4pt) a_n >= 0, b_n >= 0, ((a_n)/(b_n))$ сх-ся, $limits(sum)^infinity_(n=1) b_n < + infinity ==> limits(sum)^infinity_(n=1) a_n < + infinity$ \
*Cл-е 2.* $forall n in NN #h(4pt) a_n > 0, b_n > 0, (a_(n+1))/(a_n) <= (b_(n+1))/(b_n)$ сх-ся, $limits(sum)^infinity_(n=1) b_n < + infinity ==> limits(sum)^infinity_(n=1) a_n < + infinity$

*Т. (пр. сравнения)*: $forall n in NN #h(4pt) a_n > 0, #h(4pt) b_n > 0, #h(4pt) exists "кон." limits(lim)_(n -> infinity) (a_n)/(b_n) = k != 0 ==> sum a_n, sum b_n$ ведут себя одинаково. \
*Док-во*: По следствию 1 из пр. мажорации из сх-ти $sum b_n$ вытекает сходимость $sum a_n$. $limits(lim)_(n->infinity) (b_n)/(a_n) = 1/k stretch(=>)^"сл-е 1 из"_"пр. маж."$ из сх-ти $sum a_n$ вытекает сходимость $sum b_n$.
