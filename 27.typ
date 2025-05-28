// Степенные ряды. Радиус сходимости и интервал сходимости. Теорема Коши-Адамара. Теорема Абеля

#heading(level: 1)[27]

Функ. ряд вида $a_0 + a_1 (x-x_0) + a_2 (x-x_0)^2 + dots = limits(sum)_(n=0)^(infinity) a_n (x-x_0)^n$,
где $a_0, a_1, dots in RR$, $x_0 in RR$, называют степ. рядом. 
Числа $a_0, a_1, dots$ назыв. коэфф. степ. ряда

Пусть $L = overline(limits(lim)_(n -> infinity)) root(n, abs(a_n))$. Определим число $R$:
- $R = 1/L$, если $0 < L < +infinity$
- $R = +infinity$, если $L = 0$
- $R = 0$, если $L = +infinity$
Число $R$ называют рад. сход. степ. ряда $limits(sum)_(n=0)^(infinity) a_n x^n$. 
Если $0 < R < +infinity$, то инт. $(-R, R)$ называют инт. сход. степ. ряда $limits(sum)_(n=0)^(infinity) a_n x^n$

*Т. (Коши-Адамара)*:
$L = overline(limits(lim)_(n -> infinity)) root(n, abs(a_n))$
+ Если послед. $(root(n, abs(a_n)))$ неогр., то ряд $limits(sum)_(n=0)^(infinity) a_n x^n$ сх. только в т. $x_0$
+ Если послед. $(root(n, abs(a_n)))$ огр. и $L > 0$, то ряд сх. абс. во всех т. $x$, удовл. условию $abs(x) < 1/L$, и расх. во всех т. $x$, удовл. условию $abs(x) > 1/L$
+ Если послед. $(root(n, abs(a_n)))$ огр. и $L = 0$, то ряд сх. абс. $forall x in RR$

*Док-во*: 
+ При любом $x != 0$ посл. $(abs(x) root(n, abs(a_n))) = (root(n, abs(a_n x^n)))$ неогр., а значит $a_n x^n != o(1)$. Тогда не выполн. необход. усл. сх. ряда, значит ряд расх.
+ Пусть $abs(x) < 1/L$. Тогда $overline(limits(lim)_(n -> infinity)) root(n, abs(a_n x_n)) =  abs(x) dot overline(limits(lim)_(n -> infinity)) root(n, abs(a_n)) < 1/L dot L = 1$, в силу признака Коши ряд сх. абс. Пусть $abs(x) > 1/L$. Тогда $overline(limits(lim)_(n -> infinity)) root(n, abs(a_n x_n)) > 1/L dot L = 1$ и послед. $a_n x^n != o(1)$. Тогда не выполн. необход. усл. сх. ряда, значит ряд расх.
+ $forall x in RR$ $overline(limits(lim)_(n -> infinity)) root(n, abs(a_n x_n)) = abs(x) dot L = 0$, в силу признака Коши ряд сх. абс.

*Т. (Абеля)*: 
Если степ. ряд $limits(sum)_(n=0)^(infinity) a_n x^n$ сх. в некоторой т. $x_1 != 0$, то ряд сх. в инт. $(-abs(x_1), abs(x_1))$

*Док-во*: 
Т. $x_1$ лежит внутри инт. сх., либо является граничной т. инт. сх., а значит $(-abs(x_1), abs(x_1)) subset (-R, R)$
