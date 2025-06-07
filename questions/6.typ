#import "../functions.typ": *

= Непрерывность интеграла по верхнему пределу интегрирования

#theorem(name: "о непрерывности интеграла по верх. пределу интегрирования") 
$f in Re_([a, b]) ==>$
$ F(x) = limits(integral)_(a)^(x) f(t) d t "непр. на" [a, b]. $ \
#proof 
Пусть $x, x + h in [a, b], M = limits(sup)_(x in [a, b]) abs(f(x))$, тогда 
$ abs(F(x + h) - F(x)) = abs(limits(integral)_(a)^(x + h) f(t) d t - limits(integral)_(a)^(x) f(t) d t) = abs(limits(integral)_(x)^(x + h) f(t) d t) <= M dot abs(h) -> 0 $ 
при $h -> 0 ==> F(x + h) -> F(x)$ при $h -> 0 ==> forall x in [a, b] F$ непр. в т. $x$. #qed
