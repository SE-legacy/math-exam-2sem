#import "../functions.typ": *

= Интегрирование по частям и замена переменной в интеграле Римана

#def Функция, имеющая на отрезке непрерывную производную, наз. непрерывно дифференцируемой или гладкой. 

#theorem(name: "формула инт-я по частям") 
$u(x)$ и $v(x)$ непр. дифф. на $[a, b] ==>$
$ limits(integral)_(a)^(b) u(x)v'(x) d x = u(x)v(x)|_(a)^(b) - limits(integral)_(a)^(b) v(x) u'(x) d x. $\
#proof 
Т. к. $(u(x)v(x))' = u'(x)v(x) + u(x)v'(x)$, и все функции непр. а значит и интегриуемы на $[a, b]$, то по теореме о линейности интеграла и формуле Ньютона--Лейбница
$ u(x)v(x)|_(a)^(b) = limits(integral)_(a)^(b) (u(x)v(x))' d x = limits(integral)_(a)^(b) u'(x)v(x) d x + limits(integral)_(a)^(b) u(x)v'(x) d x. $ #qed

#theorem(name: "формула замены переменной") 
$f$ непр. на $[a, b], #h(4pt) g$ имеет непр. производную на $[alpha, beta]$ и $limits(min)_(t in [alpha, beta]) g(t) = g(alpha) = a, limits(max)_(t in [alpha, beta]) g(t) = g(beta) = b ==>$
$ limits(integral)_(a)^(b) f(x) d x = limits(integral)_(alpha)^(beta) f(g(t))g'(t) d t. $\ 
#proof 
Пусть $Phi$ - первообразная $f, #h(4pt) forall t in [alpha, beta] (Phi(g(t)))' = Phi'(g(t))g'(t) = f(g(t))g'(t)$, т.е. ф-ция $Phi compose g$ явл. первообразной $(f compose g)g'$. По формуле Ньютона--Лейбница 
$ limits(integral)_(alpha)^(beta) f(g(t))g'(t) d t = Phi(g(beta)) - Phi(g(alpha)) = Phi(b) - Phi(a) = limits(integral)_(a)^(b) f(x) d x. $ #qed
