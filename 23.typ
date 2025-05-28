#heading(level: 1)[23]

*Т. (о непр-ти пред.)*: Пусть $forall n in NN$ $f_n$ непр. в т. $x_0 in X$ и $f_n arrows f$. Тогда $f$ непр. в т. $x_0$

*Док-во*: $abs(f(x) - f(x_0)) <= abs(f(x) - f_n (x)) + abs(f_n (x) - f_n (x_0)) + abs(f_n (x_0) - f(x_0)) <= 2||f - f_n|| + abs(f_n (x) - f_n (x_0))$. 
Пусть $epsilon > 0$. Т.к. $f_n arrows f$, то $exists n_1$: $||f - f_(n_1)|| < epsilon/3$. 
Т.к. $f_(n_1)$ непр. в т. $x_0$, то $exists delta > 0$: $forall x in X (abs(x-x_0)<delta => abs(f_(n_1) (x) - f_(n_1) (x_0)) < epsilon/3)$.
Тогда $forall x in X$ $(abs(x-x_0) < delta => abs(f(x) - f(x_0)) < 2epsilon/3 + epsilon/3 = epsilon)$, т.е. $f$ непр. в. т. $x_0$.

*Т. (об инт-ти пред.)*: Пусть $forall n in NN$ $f_n$ непр. на $[a, b]$ и $f_n arrows f$. 
Тогда $f$ инт-ма и $limits(integral)_(a)^(b) f(x) d x = limits(lim)_(n -> infinity) limits(integral)_(a)^(b) f_n (x) d x$

*Док-во*: В силу т. о непр-ти пред. $f$ непр. на $[a, b]$, и, след-но, инт-ма. 
$abs(limits(integral)_(a)^(b) f_n (x) d x - limits(integral)_(a)^(b) f(x) d x) = abs(limits(integral)_(a)^(b) (f_n (x) - f(x)) d x) <=
limits(integral)_(a)^(b) abs(f_n (x) - f(x)) d x <= ||f_n - f||(b - a) = o(1)", т.е." limits(integral)_(a)^(b) f(x) d x = limits(lim)_(n -> infinity) limits(integral)_(a)^(b) f_n (x) d x$

*Т. (о дифф-ти пред.)*: Пусть $forall n in NN$ $f_n$ непр. дифф. на отр. $[a, b]$, послед. $(f_n^(prime))$ равн. сх. на отр. к ф-ции $phi$, послед. $(f_n)$ сх. в т. $x_0 in X$.
Тогда послед. $(f_n)$ равн. сх. на этом отр. к ф-ции $f$ и $forall x in [a, b]$ $f^(prime) (x) = phi(x)$

*Док-во*: Ф-ла Ньют.-Лейб.: $f_n (x) = f_n (x_0) + limits(integral)_(x_0)^(x) f_n^(prime) (t) d t$.
Пусть $A = limits(lim)_(n->infinity) f_n (x_0)$, $F_n (x) = limits(integral)_(x_0)^(x) f_n^(prime) (t) d t$, $Phi(x) = limits(integral)_(x_0)^(x) phi(t) d t$, $x in [a, b]$.
В силу сл-ия т. об инт-ти пред. $F_n arrows Phi$. Тогда послед. $(f_n)$ на этом отр. равн. сх. к $f(x) := A + limits(integral)_(x_0)^(x) phi(t) d t$, $x in [a, b]$.
Дифф-уя по верх. пред. инт.: $f^(prime) (x) = phi(x)$ $forall x in [a, b]$


