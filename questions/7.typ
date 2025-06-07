#import "../functions.typ": *

= Дифференцируемость интеграла по верхнему пределу интегрирования. Формула Ньютона--Лейбница

#theorem(name: "о дифференцируемости интеграла по верх. пределу интегрирования") 
$f in Re_([a, b])$ и непр. в т. $x_(0) in [a, b] ==> F(x) = limits(integral)_(a)^(x) f(t) d t$ дифференцируема в т.$x_(0)$, $F'(x_(0)) = f(x_(0))$ \
#proof 
По св-ву интеграла 
$ (F(x_(0) + h) - F(x_(0))) / h = 1/h limits(integral)_(x_(0))^(x_(0) + h) f(t) d t = 1/h limits(integral)_(x_(0))^(x_(0) + h) (f(x_(0)) + (f(t) - f(x_(0)))) d t = \ 1/h limits(integral)_(x_(0))^(x_(0) + h) f(x_(0)) d t + 1/h limits(integral)_(x_(0))^(x_(0) + h) (f(t) - f(x_(0))) d t = f(x_(0)) + 1/h limits(integral)_(x_(0))^(x_(0) + h) (f(t) - f(x_(0))) d t. $ 
Пусть $epsilon > 0$, $f$ непр. в т. $x_(0) ==> exists delta > 0$ такое, что $forall t in [a, b]: abs(t - x_(0)) < delta$ выполнается условие $abs(f(t) - f(x_(0))) < epsilon$. Тогда, если $abs(h) < delta$, то 
$ abs(1/h limits(integral)_(x_(0))^(x_(0) + h) (f(t) - f(x_(0))) d t) <= 1/abs(h) dot abs(h) dot epsilon = epsilon ==> limits(lim)_(h -> 0) 1/h limits(integral)_(x_(0))^(x_(0)+h) (f(t) - f(x_(0))) d t = 0 ==> $
существует предел $limits(lim)_(h -> 0) (F(x_(0) + h) - F(x_(0))) / h = f(x_(0))$, т.е. $F'(x_(0)) = f(x_(0))$. #qed \ 
#conseq() $f$ непр. на $[a, b]$ $==>$ $f$ имеет первообразную на $[a, b]$.

#theorem(name: "формула Ньютона-Лейбница") 
$f$ непр. на $[a, b] ==> limits(integral)_(a)^(b) f(x) d x = Phi(b) - Phi(a)$, где $Phi$ - произвольная первообразная $f$. \ 
#proof 
По пред. Т. $Phi$ имеет вид  $Phi(x) = limits(integral)_(a)^(x) f(t) d t + C$, где $C = "const"$.

Пусть сначала $x = a$, а потом $x = b$. Тогда 
$ Phi(a) = limits(integral)_(a)^(a) f(t) d t + C = 0 + C = C, quad Phi(b) = limits(integral)_(a)^(b) f(t) d t + C ==> limits(integral)_(a)^(b) f(x) d x = Phi(b) - Phi(a). $ #qed

*Замечание*: 
Формулулу Ньютона--Лейбница часто записывают $limits(integral)_(a)^(b) f(x) d x = Phi(x)|_(a)^(b)$, где $Phi(x)|_(a)^(b) = Phi(b) - Phi(a)$.
