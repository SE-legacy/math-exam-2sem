#import "../conf.typ": definition, theorem, property, consequence, lemma

#definition()[
  Функция $f$ определена и ограничена на $[a,b], #h(6pt) M_k = limits(sup)_(x in Delta_k)f(x) , #h(6pt) m_k = limits(inf)_(x in Delta_k)f(x), #h(6pt) k = overline(1\, n)$. Суммы 
  $ S(P) = sum^n_(k=1)M_k Delta x_k, quad s(P) = sum^n_(k=1)m_k Delta x_k $
  называются верхней и нижней суммами Дарбу соответсвенно функции $f$ для разбиения $P$.
]

#property(name: "Свойство 1")[
  $forall P #h(6pt) forall xi_P #h(6pt) s(P)<= sigma(P,xi_P) <=S(P)$.
][
  $ forall xi_k in Delta_k #h(6pt) m_k <= f(xi_k) <= M_k ==> \
  sum^n_(k=1) m_k Delta x_k <= sigma(P, xi_P) <= sum^n_(k=1) M_k Delta x_k. $
]

#property(name: "Свойство 2")[
  $P subset P_1 ==> s(P)<=s(P_1), #h(6pt) S(P)>=S(P_1)$.
][
  Пусть $P_1 = P union {x^*}, #h(6pt) x^* in (x_(k-1), x_k); M'_k = limits(sup)_(x in [x_(k-1), x^*])f(x), #h(6pt) M''_k = limits(sup)_(x in Delta [x^*, x_k])f(x)$. 
  
  Тогда для $S(P_1)$ слагаемое $M_k Delta x_k$ заменится на $M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*)$.

  По монотонности верхней грани

  $ M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*) <= M_k lr(((x^* - x_(k-1)) + (x_k - x^*)), size: #125%) = M_k Delta x_k. $

  Тогда $S(P_1) <= S(P)$. Для $s(P)$ аналогично
]

#property(name: "Свойство 3")[
  $forall P_1 #h(6pt) forall P_2 #h(6pt) s(P_1) <= S(P_2)$.
][
  $P_1 subset P, P_2 subset P$. Тогда по свойству 1, 2: $s(P_1) <= s(P) <= S(P) <= S(P_2)$.
]

#consequence()[
  ${s(P)}$ ограничено сверху, ${S(P)}$ ограничено снизу.
][]

#property(name: "Свойство 4")[
  $forall P #h(6pt) forall epsilon > 0 #h(6pt) exists xi_P quad 0<=S(P)-sigma(P,xi_P) < epsilon quad (0<=sigma(P,xi_P)-s(P)<epsilon)$.
][
  $forall k = 1, dots, k #h(6pt) exists xi_k in Delta_k:$
  $ 0<= M_k - f(xi_k) < (epsilon)/(b-a) ==>
  0<= S(P) - sigma(P, xi_P) = \
  = sum^n_(k=1) (M_k - f(xi_P)) Delta x_k < (epsilon)/(b-a) sum^n_(k=1) Delta x_k = (epsilon)/(b-a) (b-a) = epsilon. $ 
  Для $s(P)$ аналогично.
]

#consequence()[
  $forall P quad S(P) = limits(sup)_(xi_P)sigma(P,xi_P), quad s(P) = limits(inf)_(xi_P)sigma(P,xi_P)$.
][]

#definition()[
  $overline(I) colon.eq limits(inf)_P S(P)$ --- верхний, $underline(I) colon.eq limits(sup)_P S(P)$ --- нижний интегралы Дарбу от $f$.
]

#lemma()[
  $P = P_([a,b]), #h(6pt) d= d(P), #h(6pt) P^*$ получается из $P$ добавлением $l$ точек. 

  $M = limits(sup)_(x in [a,b])f(x), m=limits(inf)_(x in [a,b])$. 
  
  Тогда $S(P)-S(P^*)<=(M-m)l d, quad s(P^*)-s(P)<=(M-m)l d$.
][
  Пусть $P^* = P union x^*$, где $x^* in (x_(k_1);x_k)$.

  $ S(P) - S(P^*) = & M_k Delta x_k - lr([M'_k (x^* - x_(k-1)) + M''_k (x_k - x^*)], size: #125%) <= \ 
  & <= M_k Delta x_k - m lr([(x^* - x_(k-1)) + (x_k - x^*)], size: #125%) <= (M-m) Delta x_k <= (M-m) d. $

  Если проделать это с $l$ точками, к правой части добавится множитель $l$. Для $s(P)$ аналогично.
]


#lemma(name: "Лемма (основная лемма Дарбу)")[
  $overline(I)=limits(lim)_(d->0) S(P), quad underline(I)=limits(lim)_(d->0)s(P)$ 
][
  $f equiv c = "const" ==> forall P quad S(P)=c(b-a) = overline(I)$.

  Пусть $f equiv.not "const" ==> M = limits(sup)_(x in [a,b])f(x) > m=limits(inf)_(x in [a,b]) f(x), #h(6pt) epsilon > 0 ==> exists P^* #h(6pt) S(P)-overline(I) < epsilon/2$.

  $l$ --- число точек $P^*$, не совпадающих с $a$ и $b, #h(6pt) P$ --- произвольное такое, что $d(P)<delta=epsilon/(2l(M-m)), #h(6pt) P'= P union P^* ==>$.

  По предыдущей лемме 
  $ 0<=S(P)-S(P')<=(M-m)l d < e/2. $

  Если $P^* subset P'$, то 
  
  $ overline(I) <= S(P') <= S(P^*) ==> \
  0 <= S(P') - overline(I) <= S(P^*) - overline(I) < epsilon/2. $

  $ forall P #h(6pt) d(P) < delta quad 0<= S(P) - overline(I) = lr((S(P)-S(P')), size: #125%) + (S(P')-overline(I))< 2 dot epsilon/2 = epsilon. $
  Тогда $overline(I) = limits(lim)_(d->0)S(P)$. Для $underline(I)$ аналогично.
]

