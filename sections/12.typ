*Опр.:* Числовой ряд $Sigma a_(n)$ --- это посл–ть $(S_(n))$, $a_(n)$ --- $n$–ый член ряда, $S_(n)$ --- $n$–ая частичная сумма ряда, $S_(n) = limits(Sigma)_(k = 1)^(n) a_(k), n in NN$.\ 
*Опр.:* Если в $overline(RR)$ сущ. предел $limits(lim)_(n -> infinity) S_(n) = S$, то $S in overline(RR)$ наз. суммой ряда и обозн. $S = limits(Sigma)_(n = 1)^(infinity) a_(n)$. 
Если $S$ конечное, то ряд наз. сходящимся. Если $S = plus.minus infinity$, или $limits(lim)_(n -> infinity) S_(n)$ не сущ. то ряд расход.

*Т.(необх. усл. сход–ти ряда):* $Sigma a_(n)$ сход. $==> limits(lim)_(n -> infinity) a_(n) = 0$, т.е. $a_(n) = overline(o)(1)$.
*Док-во:* Пусть ряд $Sigma a_(n)$ сход. и его сумма $S in RR$. Тогда $limits(lim)_(n -> infinity) a_(n) = limits(lim)_(n -> infinity) (S_(n) - S_(n - 1)) = S - S = 0$. 

*Опр.:* Ряд $Sigma a_(n)$ удовл. усл. Коши, если $forall epsilon > 0 exists n_(epsilon) in NN forall n >= n_(epsilon) forall p in NN |limits(Sigma)_(k = n + 1)^(n + p) a_(k)| < epsilon$.

*Т. (крит. Коши сход–ти числ. ряда.):* $Sigma a_(n)$ сход. $<==>$ ряд удовл. усл. Коши.\ 
*Док-во:* Используя крит. Коши сход-ти последовательности: $Sigma a_(n)$ сход. $<==> (S_(n))$ сход. $<==> (S_(n))$ фундаментальна, т.е. $forall epsilon > 0 exists n_(epsilon) in NN forall n >= n_(epsilon) forall p in NN |S_(n + p) - S_(n)| < epsilon$. При этом $S_(n + p) - S_(n) = limits(Sigma)_(k = 1)^(n + p) a_(k) - limits(Sigma)_(k = 1)^(n) a_(k) = limits(Sigma)_(k = n + 1)^(n + p) a_(k)$. 
