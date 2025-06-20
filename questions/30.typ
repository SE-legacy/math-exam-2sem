= №30. Вект.-функ. вект. перем. Предел и непр. функ. в т. Непр. функ. на множ. Равн. непр. функ. на множ., т. Кантора 

*Опр.*: Отображение вида $overline(f) : X -> RR^k$, где $X subset RR^m$, $m > 1$, $k > 1$, называют вект. функ. вект. арг.

*Опред. пред. по Коши*:
Пусть т. $overline(x)_0$ --- пред. т. обл. опред. функ. $overline(f) : X -> RR^k$, $overline(A) in RR^k$.
Вект. $overline(A)$ называют пред. функ. $overline(f)$ в т. $overline(x)_0$ и обозначают символом $limits(lim)_(overline(x) -> overline(x)_0) overline(f) (overline(x)) = overline(A)$, если
$forall epsilon > 0$ $exists delta > 0$ $forall overline(x) in D(overline(f))$ $(0 < abs(overline(x) - overline(x)_0) < delta => abs(overline(f) (overline(x)) - overline(A)) < epsilon)$

*Опред. непр-ти. функ. по Коши*: Функ. $overline(f)$ называется непр. в т. $overline(x)_0$, если 
$forall overline(x) in D(overline(f))$ $(abs(overline(x) - overline(x)_0) < delta => abs(overline(f) (overline(x)) - overline(A)) < epsilon)$

*Опр.*: Функ. $overline(f)$ непр. на множ. $X$, если $forall overline(x) in XX$ функ. $overline(f)$ непр. в $overline(x)$ 

*Опр.*: Функ. $overline(f)$ называется равн. непр. на множ. $X$, если $forall epsilon > 0$ $exists delta = delta(epsilon) > 0$ $forall overline(x) in D(overline(f))$ $forall overline(x)^(prime) in D(overline(f))$
$(abs(overline(x) - overline(x)^(prime)) < delta => abs(overline(f) (overline(x)) - overline(f) (overline(x)^(prime))) < epsilon)$

*Т. (Кантора)*
Пусть функ. $overline(f)$ непр. на множ. $X$ и множ. $X$ --- компакт. Тогда функ. $overline(f)$ равн. непр. на $X$
*Док-во*: Предпол. против.: $exists epsilon_0 > 0, forall delta > 0, exists  overline(x)', overline(x)'' in X:(abs(overline(x)' - overline(x)'') < delta => abs(overline(f)(overline(x)') - overline(f)(overline(x)'')) >= epsilon_0)$. Пусть $delta_n = 1/n$. Тогда $forall n in NN, exists overline(x)'_n, overline(x)''_n$, $abs(overline(x)'_n - overline(x)''_n) < 1/n$, но $abs(overline(f)(overline(x)'_n) - overline(f)(overline(x)''_n)) >= epsilon_0)$. $X$ - компакт $=> exists overline(x)'_k_n -> overline(x)_0 in X$ и $exists overline(x)''_k_n -> overline(x)_0 in X$. $overline(f)$ - непр. $=> overline(f)(overline(x)'_k_n) -> overline(f)(overline(x)_0) in X$ и $ overline(f)(overline(x)''_k_n) -> overline(f)(overline(x)_0) => overline(f)(overline(x)'_k_n) - overline(f)(overline(x)''_k_n) -> 0$. Получаем противоречие 
