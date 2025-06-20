= №2. Верхние и нижние суммы Дарбу, их св-ва. Верхний и нижний интегралы. Осн. лемма Дарбу

*Опр.* $f$ опр. и огр. на $[a,b]$, $M_k = limits(sup)_(x in Delta k)f(x), m_k = limits(inf)_(x in Delta k)f(x), k = overline(1\, n)$.\
$S(P) = limits(sum)^n_(k=1)M_k Delta x_k$ --- верхняя, $s(P) = limits(sum)^n_(k=1)m_k Delta x_k$ --- нижняя суммы Дарбу ф-ии $f$ для разбиения $P$. \
*Св-ва сумм Дарбу:*
+ $forall P #h(4pt) forall xi_p #h(4pt) s(P)<= sigma(P,xi_P) <=S(P)$
+ $P subset P_1 ==> s(P)<=s(P_1), #h(4pt) S(P)>=S(P_1)$ 
+ $forall P_1 #h(4pt) forall P_2 #h(4pt) s(P_1) <= S(P_2)$ \ *Сл-е:* ${s(P)}$ огр. сверху, ${S(P)}$ огр. снизу.
+ $forall P #h(4pt) forall epsilon >0 #h(4pt) exists xi_P #h(4pt) 0<=S(P)-sigma(P,xi_p)<epsilon #h(4pt) (0<=sigma(P,xi_p)-s(P)<epsilon)$ \ *Сл-е:* $forall P #h(4pt) S(P) = limits(sup)_(xi_P)sigma(P,xi_P),  #h(4pt) s(P) = limits(inf)_(xi_P)sigma(P,xi_P)$

*Опр.* $overline(I):=limits(inf)_P S(P)$ --- верхний, $underline(I) :=limits(sup)_P S(P)$ --- нижний интегралы Дарбу от $f$

*Лемма*: $P = P_([a,b]), d= d(P), P^*$ получается из $P$ добавлением $l$ точек. $M = limits(sup)_(x in [a,b])f(x), m=limits(inf)_(x in [a,b])$. Тогда $S(P)-S(P^*)<=(M-m)l d, #h(4pt) s(P^*)-s(P)<=(M-m)l d$. \
*Док-во*: Пусть $P^* = P union x^*$, где $x^* in (x_(k_1);x_k)$.\
$S(P) - S(P^*) = M_k Delta x_k - [M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*)] <= M_k Delta x_k - m [(x^* - x_(k-1)) + (x_k - x^*)] <= (M-m) Delta x_k <= (M-m) d$. Если проделать это с $l$ точками, к правой части добавится множитель $l$. Для $s(P)$ аналог.

*Лемма (осн. лемма Дарбу)*: $overline(I)=limits(lim)_(d->0) S(P)$, $underline(I)=limits(lim)_(d->0)s(P)$\
*Док-во*: $f = c = "const" ==> forall P #h(4pt) S(P)=c(b-a) = overline(I).$ Пусть $f != "const" ==> M = limits(sup)_(x in [a,b])f(x) > m=limits(inf)_(x in [a,b]) f(x)$. $epsilon >0 ==> exists P^*: S(P)-overline(I) < epsilon/2$. #h(4pt)
$l$ --- число точек $P^*$, не совп. с $a$ и $b$. $P$ --- произв., $d(P)<delta=epsilon/(2l(M-m))$. $P'= P union P^*$. По пред. лемме $0<=S(P)-S(P')<=(M-m)l d < e/2.$\
$P^* subset P' ==> overline(I) <= S(P') <= S(P^*) ==> 0 <= S(P') - overline(I) <= S(P^*) - overline(I) < epsilon/2$. #h(4pt) $forall P: d(P) < delta #h(4pt) 0<= S(P) - overline(I) = (S(P)-S(P'))+(S(P')-overline(I))< 2 dot epsilon/2 = epsilon ==> overline(I) = limits(lim)_(d->0)S(P)$. Для $underline(I)$ аналог.

