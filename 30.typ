// Вектор-функции векторного переменного. Предел и непрерывность функции в точке. Непрерывность функции 
// на множестве. Равномерная непрерывность функции на множестве и теорема Кантора

#heading(level: 1)[30]

Отображение вида $overline(f) : X -> RR^k$, где $X subset RR^m$, $m > 1$, $k > 1$, называют вект. функ. вект. арг.

*Опред. пред. по Коши*:
Пусть т. $overline(x)_0$ --- пред. т. обл. опред. функ. $overline(f) : X -> RR^k$, $overline(A) in RR^k$.
Вект. $overline(A)$ называют пред. функ. $overline(f)$ в т. $overline(x)_0$ и обозначают символом $limits(lim)_(overline(x) -> overline(x)_0) overline(f) (overline(x)) = overline(A)$, если
$forall epsilon > 0$ $exists delta > 0$ $forall overline(x) in D(overline(f))$ $(0 < abs(overline(x) - overline(x)_0) < delta => abs(overline(f) (overline(x)) - overline(A)) < epsilon)$

*Опред. непр-ти. функ. по Коши*: Функ. $overline(f)$ называется непр. в т. $overline(x)_0$, если 
$forall overline(x) in D(overline(f))$ $(abs(overline(x) - overline(x)_0) < delta => abs(overline(f) (overline(x)) - overline(A)) < epsilon$

Функ. $overline(f)$ непр. на множ. $X$, если $forall overline(x) in XX$ функ. $overline(f)$ непр. в $overline(x)$ 

Функ. $f$ называется равн. непр. на множ. $X$, если $forall epsilon > 0$ $delta = delta(epsilon) > 0$ $forall overline(x) in D(overline(f))$ $forall overline(x)^(prime) in D(overline(f))$
$(abs(overline(x) - overline(x)^(prime)) < delta => abs(overline(f) (overline(x)) - overline(f) (overline(x)^(prime))) < epsilon)$sswap.img

*Т. (Кантора)*
Пусть функ. $overline(f)$ непр. на множ. $X$ и множ. $X$ --- компакт. Тогда функ. $overline(f)$ равн. непр. на $X$
