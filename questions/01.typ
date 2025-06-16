= №40. Дифференциалы первого и высших порядков.

*Опр.* Пусть $f$ дифф. в $overline(x)_0$. Опр. ф-ию $d f(overline(x)_0): RR^m -> RR$, наз. дифференциалом ф--ии $f$ в т. $overline(x)_0$: $forall overline(h) in RR^m quad d f(overline(x)_0) (overline(h)) = sum^m_(k=1) (diff f)/(diff x_k) (overline(x)_0) h_k.$ \
*Опр.* Пусть $f$ 2-дифф. в $overline(x)_0$. $forall overline(h) in RR^m$ определим в $O(overline(x)_0)$ функцию $d_overline(h): RR^m -> RR$, $forall overline(x) in O(overline(x)_0) quad d_overline(h)f(overline(x)) = d f(overline(x))(overline(h))$ \
Дифференциалом 2-го порядка ф-ии $f$ в т. $overline(x)_0$ наз. функия $d^2f(overline(x)_0): RR^m -> RR$ такая, что 
$forall overline(h) in RR quad d^2f(overline(x)_0)(overline(h)) = d(d_overline(h)f)(overline(x)_0)(overline(h)).$ \
*Опр.* Пусть $f$ $n$-дифф. в т. $overline(x)_0$. Её $n$-дифференциалом в этой т. наз. ф-ия $d^n f(overline(x)_0): RR^m -> RR$ такая, что $forall overline(h) in RR^m quad d^n f(overline(x)_0)(overline(h)) = d(d^(n-1)_overline(h) f)(overline(x)_0)(overline(h))$

По индукции можно установить: $d^n f(overline(x)_0) = limits(sum)^m_(i_1, dots, i_n = 1) (diff^n f)/(diff x_i_1 dots diff x_i_n)(overline(x)_o) d x_i_1 dots d x_i_n.$ \
В силу независимости смешанных переменных от порядка дифференцирования: $d^n f(overline(x)_0) = limits(sum)_(alpha_1 + dots + alpha_m = n) (n!)/(alpha_1 ! dots alpha_m !) (diff^n f)/(diff x_1^alpha_1 dots diff x_1^alpha_m)(overline(x)_o) d x_1^alpha_1 dots d x_1^alpha_m.$ \
Что символически можно записать: $d^n f(overline(x)_0) = (d x_1 diff/(diff x_1) + dots + d x_m diff/(diff x_m))^n f(overline(x)_o).$
