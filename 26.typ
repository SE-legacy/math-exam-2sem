//Непрерывность, дифференцируемость и интегрируемость суммы функционального ряда

#heading(level: 1)[26]

*Т. (о непр. суммы ряда)*: Пусть $forall n in NN$ $f_n$ непр. в т. $x_0 in X$ и ряд $sum f_n$ равн. сх. 
Тогда сумма ряда $S = limits(sum)_(n=1)^(infinity) f_n$ непр. в т. $x_0$

*Док-во*: Следует из т. о непр-ти. пред. функ. послед.

*Т. (об инт-ти суммы ряда)*: Пусть $X = [a,b]$, $forall n in NN$ $f_n$ непр. на $[a, b]$ и ряд $sum f_n$ равн. сх.
Тогда сумма ряда $S = limits(sum)_(n=1)^(infinity) f_n$ инт-ма и 
$limits(integral)_(a)^(b) (limits(sum)_(n=1)^(infinity) f_n (x)) d x = limits(sum)_(n=1)^(infinity) f_n (x) limits(integral)_(a)^(b) f_n (x) d x$

*Док-во*: Следует из т. об инт-ти пред. функ. послед.

*Т. (о дифф-ти суммы ряда)*: Пусть $X = [a, b]$, $forall n in NN$ $f_n$ непр. дифф. на $[a,b]$, ряд $sum f_(n)^(prime)$ равн. сх., ряд $sum f_n$ сх. в некоторой точке $x_0 in [a, b]$. 
Тогда ряд $sum f_n$ равн. сх. и $forall x in [a, b]$ $(limits(sum)_(n=1)^(infinity) f_n (x))^(prime) = limits(sum)_(n=1)^(infinity) f_(n)^(prime) (x)$

*Док-во*: Следует из т. о дифф-ти. пред. функ. послед.
