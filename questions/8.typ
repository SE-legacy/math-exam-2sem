= №8. Интегрирование по частям и замена переменной в интеграле Римана.

*Опр.:* Ф-ция, имеющая на отрезке непр. производную, наз. непр. дифф. или гладкой. 

*Т. (ф-ла инт-я по частям):* $u(x)$ и $v(x)$ непр. дифф. на $[a, b] ==> integral_(a)^(b) u(x)v'(x) d x = u(x)v(x)|_(a)^(b) - integral_(a)^(b) v(x) u'(x) d x$.\
*Док-во:* Т.к. $(u(x)v(x))' = u'(x)v(x) + u(x)v'(x)$, и все функции непр. а значит и инт. на $[a, b]$, то по Т. о лин-сти инт-а и ф-ле Ньютона-Лейбница $u(x)v(x)|_(a)^(b) = integral_(a)^(b) (u(x)v(x))' d x = integral_(a)^(b) u'(x)v(x) d x + integral_(a)^(b) u(x)v'(x) d x$. 

*Т. (ф-ла замены переменной):* $f$ непр. на $[a, b]$, $g$ имеет непр. производную на $[alpha, beta]$ и $min_(t in [alpha, beta]) g(t) = g(alpha) = a, max_(t in [alpha, beta]) g(t) = g(beta) = b ==> integral_(a)^(b) f(x) d x = integral_(alpha)^(beta) f(g(t))g'(t) d t$.\ 
*Док-во:* Пусть $Phi$ - первообразная $f$. $forall t in [alpha, beta] (Phi(g(t)))' = Phi'(g(t))g'(t) = f(g(t))g'(t)$, т.е. ф-ция $Phi compose g$ явл. первообразной $(f compose g)g'$. По ф-ле Ньютона-Лейбница $integral_(alpha)^(beta) f(g(t))g'(t) d t = Phi(g(beta)) - Phi(g(alpha)) = Phi(b) - Phi(a) = integral_(a)^(b) f(x) d x$. 
