= №20. Коммут. закон для знакопол. и абс. сх-ся рядов. Т. Римана 

*Т. (коммут. закон для знакопол. ряда)*: $forall k in NN #h(4pt) a_k >= 0 ==>$ для любой перестановки ряда выполняется: $limits(sum)^infinity_(k=1) a_(n_k) = limits(sum)^infinity_(k=1) a_k$ \
*Док-во*: Пусть $m_p = max(n_1, n_2, dots, n_p), #h(4pt) p in NN ==>$\
$forall p #h(4pt) limits(sum)^p_(k=1) a_(n_k) <= limits(sum)^(m_p)_(k=1) a_k <= limits(sum)^infinity_(k=1) a_k ==> limits(sum)^infinity_(k=1) a_(n_k) <= limits(sum)^infinity_(k=1) a_k$.  $sum a_k$ можно также считать перестановкой $sum a_(n_k) ==> limits(sum)^infinity_(k=1) a_k <= limits(sum)^infinity_(k=1) a_(n_k)$. Cл-но, равенство верно.


*Т. (коммут. закон для абс. сх-ся ряда)*: Ряд абс. сх-ся $==>$ любая его перестановка абс. сх-ся и их суммы равны. \
*Док-во*: Применим пред. теорему для рядов $sum a^+_n$ и $sum a^-_n$.

*Т. (Римана)*: $sum a_n$ сх-ся усл. $==> forall A in overline(RR) #h(4pt) exists "перестановка": limits(sum)^infinity_(k=1) a_(n_k) = A$