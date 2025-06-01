= №21. Произведение числ. рядов, согл. с произведением частных сумм. Т. о пр-ии абс. сх-ся рядов.

*Опр.* Числ. ряд $sum c_n$, где $c_n = a_n dot  limits(sum)^(n-1)_(k=1) b_k + b_n dot  limits(sum)^(n-1)_(k=1) a_k + a_n b_n$, наз. произведением рядов $sum a_n$ и $sum b_n$, согл. с произведением частных сум. \
Если $A_n = limits(sum)^(n)_(k=1) a_k, #h(4pt) B_n = limits(sum)^(n)_(k=1) b_k, #h(4pt) C_n = limits(sum)^(n)_(k=1) c_k$, то $C_n = A_n dot B_n$.

*Т. (о пр-ии абс. сх-ся рядов)*: Пусть $sum a_n$ и $sum b_n$ абс. сх-ся, тогда при любой нумерации эл-тов матрицы $C = mat(
  a_1 b_1, a_1 b_2, dots;
  a_2 b_1, a_2 b_2, dots;
  dots, dots, dots;
)$ ряд $sum c_n$ абс. сх-ся и $limits(sum)^infinity_(n=1) c_n = limits(sum)^infinity_(n=1) a_n dot limits(sum)^infinity_(n=1) b_n$. \
*Док-во*: Рассм. нумерацию $c_1 = a_1 b_1, c_2 = a_1 b_2, c_3 = a_2 b_2, c_4 = a_2 b_1, c_5 = a_1 b_3, dots $. Тогда $limits(sum)^(n)_(k=1) abs(c_k) <= limits(sum)^(n^2)_(k=1) abs(c_k) = limits(sum)^n_(k=1) abs(a_k) dot limits(sum)^n_(k=1) abs(b_k) stretch(=>)^lim_(n-> infinity) limits(sum)^infinity_(k=1) abs(c_k) <= limits(sum)^infinity_(k=1) abs(a_k) dot limits(sum)^infinity_(k=1) abs(b_k) < + infinity$, т. е. $sum c_n$ абс. сх-ся $==>$ любая его перестановка абс. сх-ся и её сумма равна сумме $sum c_n$. \
Произведем группировку $c_1 + (c_2 + c_3 + c_4) + (c_5 + dots + c_9) + dots$, согл. с пр-ем частных сумм. Тогда при любой нумерации эл-ов матрицы $C$ $limits(sum)^infinity_(n=1) c_(phi(n)) = limits(sum)^infinity_(n=1) c_n = limits(sum)^infinity_(n=1) a_n dot limits(sum)^infinity_(n=1) b_n$.