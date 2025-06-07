#import "../functions.typ": *

= Верхние и нижние суммы Дарбу, их свойства. Верхний и нижний интегралы. Основная лемма Дарбу

#def 
$f$ опр. и огр. на $[a,b], #h(4pt) M_k = limits(sup)_(x in Delta_k_n)f(x) , #h(4pt) m_k = limits(inf)_(x in Delta_k_n)f(x), k = overline(1\, n)$. 
$ S(P) = sum^n_(k=1)M_k Delta x_x, quad s(P) = sum^n_(k=1)m_k Delta x_x $
наз. верхней и нижней суммами Дарбу соотв-нно функции $f$ для разбиения $P$.

#properties
+ $forall P #h(4pt) forall xi_P, #h(4pt) s(P)<= sigma(P,xi_P) <=S(P)$. \ #proof $forall xi_k in Delta_k, #h(4pt) m_k <= f(xi_k) <= M_k ==> limits(sum)^n_(k=1) m_k Delta x_k <= sigma(P, xi_P) <= limits(sum)^n_(k=1) M_k Delta x_k$. #qed

+ $P subset P_1 ==> s(P)<=s(P_1), #h(4pt) S(P)>=S(P_1)$. \ #proof Пусть $P_1 = P union {x^*}, x^* in (x_(k-1), x_k);M'_k = limits(sup)_(x in [x_(k-1), x^*])f(x), M''_k = limits(sup)_(x in Delta [x^*, x_k])f(x) ==>$ для $S(P_1)$ слагаемое $M_k Delta x_k$ заменится на $M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*) stretch(=>)_"монот. верх. гр." M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*) <= M_k ((x^* - x_(k-1)) + (x_k - x^*)) = M_k Delta x_k ==> S(P_1) <= S(P)$. \ Для $s(P)$ аналог. #qed

+ $forall P_1 #h(4pt) forall P_2 quad s(P_1) <= S(P_2)$. \ #proof $P_1 subset P, P_2 subset P stretch(=>)^"св-ва"_"1, 2" s(P_1) <= s(P) <= S(P) <= S(P_2)$. #qed \ #conseq() ${s(P)}$ огр. сверху, ${S(P)}$ огр. снизу.

+ $forall P_1 #h(4pt) forall epsilon > 0 #h(4pt) exists xi_P quad 0<=S(P)-sigma(P,xi_P) < epsilon quad (0<=sigma(P,xi_P)-s(P)<epsilon)$. \ #proof $forall k = 1, dots, k #h(4pt) exists xi_k in Delta_k:$
$ 0<= M_k - f(xi_k) < (epsilon)/(b-a) ==> \ 0<= S(P) - sigma(P, xi_P) = sum^n_(k=1) (M_k - f(xi_P)) Delta x_k < (epsilon)/(b-a) sum^n_(k=1) Delta x_k = (epsilon)/(b-a) (b-a) = epsilon. $ \ Для $s(P)$ аналог. #qed \ #conseq() $forall P quad S(P) = limits(sup)_(xi_P)sigma(P,xi_P), quad s(P) = limits(inf)_(xi_P)sigma(P,xi_P)$.

#def 
$overline(I):=limits(inf)_P S(P)$ --- верхний, $underline(I) :=limits(sup)_P S(P)$ --- нижний интегралы Дарбу от $f$.

#lemma() 
$P = P_([a,b]), #h(4pt) d= d(P), #h(4pt) P^*$ получается из $P$ добавлением $l$ точек. \
$M = limits(sup)_(x in [a,b])f(x), m=limits(inf)_(x in [a,b]) ==> S(P)-S(P^*)<=(M-m)l d, quad s(P^*)-s(P)<=(M-m)l d$. \ 
#proof 
Пусть $P^* = P union x^*$, где $x^* in (x_(k_1);x_k)$.

$S(P) - S(P^*) = M_k Delta x_k - [M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*)] <=$

$M_k Delta x_k - m [(x^* - x_(k-1)) + (x_k - x^*)] <= (M-m) Delta x_k <= (M-m) d.$

Если проделать это с $l$ точками, к правой части добавится множитель $l$. Для $s(P)$ аналог. #qed

#lemma(name: "осн. лемма Дарбу") 
$overline(I)=limits(lim)_(d->0) S(P), quad underline(I)=limits(lim)_(d->0)s(P)$ \ 
#proof 
$f = c = "const" ==> forall P quad S(P)=c(b-a) = overline(I)$.

Пусть $f != "const" ==> M = limits(sup)_(x in [a,b])f(x) > m=limits(inf)_(x in [a,b]) f(x), #h(4pt) epsilon > 0 ==> exists P^*: S(P)-overline(I) < epsilon/2$.

$l$ --- число точек $P^*$, не совп. с $a$ и $b, #h(4pt) P$ --- произв., $d(P)<delta=epsilon/(2l(M-m)), #h(4pt) P'= P union P^* ==>$.

По пред. лемме $0<=S(P)-S(P')<=(M-m)l d < e/2, #h(4pt) P^* subset P' ==>$

$overline(I) <= S(P') <= S(P^*) ==> 0 <= S(P') - overline(I) <= S(P^*) - overline(I) < epsilon/2.$

$forall P: d(P) < delta quad 0<= S(P) - overline(I) = (S(P)-S(P'))+(S(P')-overline(I))< 2 dot epsilon/2 = epsilon ==> overline(I) = limits(lim)_(d->0)S(P). $ Для $underline(I)$ аналог. #qed

