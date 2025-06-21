*Опр.* Непр. отобр. отрезка в прост. $RR^n$ наз. кривой. Кривая $Gamma$ задается век.-функ. $overline(gamma)(t) = (gamma_1 (t),..., gamma_n (t))$ \

*Опр.*: Кривая $Gamma = Gamma_(overline(gamma))$ называется дифф-мой (непр. дифф-мой), если вект.-функ. $overline(gamma)$ дифф-ма (непр. дифф-ма) на $[a, b]$

*Опр.*: Т. кривой $Gamma$, в которой $overline(gamma)^(prime) (t) = overline(0)$, называется особой 

*Опр.*: Непр. дифф-ая кривая без особых точек называется гладкой кривой

*Опр.*: Пусть $Gamma = Gamma_(overline(gamma))$ --- кривая в пр. $RR^n$ и $a = t_0 < t_1 < dots < t_k = b$.
Тогда сумма $limits(sum)_(i=1)^(k) abs(overline(gamma) (t_i) - overline(gamma) (t_(i-1)))$
равна длине ломаной с вершинами в т. $M_i (gamma_1 (t_i), gamma_2 (t_i))$, $i = 0, 1, dots, k$, лежащих на кривой $Gamma$. 
Такую ломаную называют вписанной в кривую $Gamma$

*Опр.*: Кривую $Gamma$ называют спрямляемой, если длины всех ломаных, впис. в эту кривую, образуют огр. множ.

*Опр.*: Длиной спрям. кривой $Gamma$ называют верхнюю грань длин всех ломаных, впис. в эту кривую, и обозначают символом $abs(Gamma)$

*Т. (О длине кривой)*: Если $Gamma = Gamma_overline(gamma), t in [a,b]$ непр. дифф. кривая, то ее длина выраж. рав. $abs(Gamma) = limits(integral)_a^b abs(overline(gamma)'(t)) d t$ \
*Док-во*: $forall t_i: a = t_0<...<t_n = b$ имеем $limits(sum)_(i=1)^n abs(overline(gamma)(t_i) - overline(gamma)(t_(i-1))) = limits(sum)_(i=1)^n abs(limits(integral)_(t_(i-1))^t_i overline(gamma)'(t) d t) <= limits(sum)_(i=1)^n limits(integral)_(t_(i-1))^t_i abs(overline(gamma)'(t)) d t = limits(integral)_a^b abs(overline(gamma)'(t)) d t$. Переходя к верх. грани по всевоз. разбиен. отр., получ. нарав. $abs(Gamma) <= limits(integral)_a^b abs(overline(gamma)'(t)) d t$. Докаж. противопол. нерав. Пусть $epsilon > 0$. В силу равномер. непр-ти ф. $overline(gamma)'$, $exists delta > 0: abs(s-t) < delta => abs(overline(gamma)'(s) - overline(gamma)'(t)) < epsilon$. Возьмем разбиен. с диам., меньшим $delta$. Тогда $forall t in [t_(i-1), t_i]$ $abs(overline(gamma)')(t) = abs((overline(gamma)'(t) - overline(gamma)'(t_i)) + overline(gamma)'(t_i)) <= abs(overline(gamma)'(t) - overline(gamma)'(t_i)) + abs(overline(gamma)'(t_i)) <= abs(overline(gamma)'(t_i)) + epsilon$. Далее получим $limits(integral)_(t_(i-1))^t_i abs(overline(gamma)'(t)) d t - epsilon Delta t_i <= abs(overline(gamma)'(t_i)) Delta t_i = abs(limits(integral)_(t_(i-1))^t_i (overline(gamma)'(t) + overline(gamma)'(t_i) - overline(gamma)'(t)) d t) <= abs(limits(integral)_(t_(i-1))^(t_i) overline(gamma)'(t) d t) + abs(limits(integral)_(t_(i-1))^(t_i) (overline(gamma)'(t_i) - overline(gamma)'(t)) d t) <= abs(overline(gamma)(t_i) - overline(gamma)(t_(i-1))) + epsilon Delta t_i$ и \ $limits(integral)_a^b abs(overline(gamma)'(t)) d t = limits(sum)_(i=1)^n limits(integral)_(t_(i-1))^(t_i) abs(overline(gamma)'(t)) d t <= limits(sum)_(i=1)^n abs(overline(gamma)(t_i) - overline(gamma)(t_(i-1))) + 2 epsilon (b-a) <= abs(Gamma) + 2 epsilon (b-a)$. Тогда в силу произвол. $epsilon > 0$, имеем $limits(integral) abs(overline(gamma)'(t)) d t <= abs(Gamma)$. И так мы получаем, что $limits(integral) abs(overline(gamma)'(t)) d t = abs(Gamma)$
