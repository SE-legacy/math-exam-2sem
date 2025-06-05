#import "../functions.typ": *

= Свойства интеграла Римана: линейность интеграла, аддитивность интеграла относительно пределов интегрирования, монотонность интеграла, первая теорема о среднем. Операции над интегрируемыми функциям

#theorem(name: "линейность интеграла") 
$f, g in Re_([a, b]) #h(4pt) c in RR ==> f + g, quad c f in Re_([a, b])$, и
$ limits(integral)_(a)^(b) (f(x) + g(x)) d x = limits(integral)_(a)^(b) f(x) d x + limits(integral)_(a)^(b) g(x) d x, quad limits(integral)_(a)^(b) c f(x) d x = c limits(integral)_(a)^(b) f(x) d x $
#proof 
$sigma(f + g, P, xi_(P)) = sigma(f, P, xi_(P)) + sigma(g, P, xi_(P))$.

$sigma(c f, P, xi_(P)) = c dot sigma(f, P, xi_(P))$. #qed

#theorem(name: "аддитивность интеграла") 
Пусть $a < c < b$, тогда $f in Re_([a, b]) <==> f in Re[a, c]$ и $f in Re[c, b]$
$ limits(integral)_(a)^(b) f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(b) f (x) d x. $
#proof 
$arrow.r.double.long.bar$ $f in Re_([a, b]), epsilon > 0 stretch(=>)_"крит. инт-сти" exists P_([a, b]): S(P) - s(P) < epsilon$. Пусть $P^(*) = P union {c} ==>$
$S(P^(*)) - s(P^(*)) <= S(P) - s(P) < epsilon quad P^(*) = P'_([a, c]) union P''_([c, b]) = P' union P''$,

$(S(P') - s(P') <= S(P^(*)) - s(P^(*)) < epsilon$,
$(S(P'') - s(P'') <= S(P^(*)) - s(P^(*)) < epsilon stretch(=>)^"крит."_" инт-сти"$

$f in Re[a, c] quad f in Re[c, b]$.

$arrow.l.double.long.bar$ $f in Re[a, c]$ и $f in Re[c, b]. #h(4pt) epsilon > 0. #h(4pt) exists P' = P'_([a, c])$ и $exists P'' = P''_([c, b]):$

$S(P') - s(P') < (epsilon)/(2) quad S(P'') - s(P'') < (epsilon)/(2)$.

Тогда для $P = P_([a, b]) = P' union P'' quad S(P) - s(P) < (epsilon)/(2) + (epsilon)/(2) < epsilon$ т.е. $f in Re_([a, b])$. #qed

#theorem(name: "монотонность интеграла") 
$f, g in Re_([a, b]), forall x in [a, b] quad f(x) <= g(x) ==>$
$ limits(integral)_(a)^(b) f(x) d x <= limits(integral)_(a)^(b) g(x) d x. $
#proof 
$ forall P, #h(4pt) forall xi_(P) quad sigma(f, P, xi_(P)) <= sigma(g, P, xi_(P)) stretch(=>)^"lim"_(d(P) -> 0) 
limits(integral)_(a)^(b) f(x) d x <= limits(integral)_(a)^(b) g(x) d x. $ #qed \ 
#conseq(number: 1) 
$f in Re_([a, b]), forall x f(x) >= 0 ==>$
$ limits(integral)_(a)^(b) f(x) d x >= 0. $ \ 
#conseq(number: 2) 
$f in Re_([a, b]) ==>$
$ abs(limits(integral)_(a)^(b) f(x) d x) <= limits(integral)_(a)^(b) abs(f(x)) d x <= limits(sup)_(x in[a, b]) abs(f(x)) (b - a). $ 

#theorem(name: "первая теорема о среднем") 
$f, g in Re_([a, b]), forall x in [a, b] quad g(x) >= 0 quad (g(x) <= 0)$,

$M = limits(sup)_(x in[a, b]) f(x), m = limits(inf)_(x in[a, b]) f(x) ==> exists mu in [m, M]:$
$ limits(integral)_(a)^(b) f(x) g(x) d x = mu limits(integral)_(a)^(b) g(x) d x. $
#proof 
$forall x in [a, b] g(x) >= 0, m <= f(x) <= M ==> m g(x) <= f(x) g(x) <= M g(x) ==>$
$ m limits(integral)_(a)^(b) g(x) d x <= limits(integral)_(a)^(b) f(x) g(x) d x <= M limits(integral)_(a)^(b) g(x) d x. \
limits(integral)_(a)^(b) g(x) d x = 0 ==> 0 = 0. \
limits(integral)_(a)^(b) g(x) d x > 0 ==> m <= (limits(integral)_(a)^(b) f(x) g(x) d x)/(limits(integral)_(a)^(b) g(x) d x) <= M (limits(integral)_(a)^(b) f(x) g(x) d x)/(limits(integral)_(a)^(b) g(x) d x) = mu. $ #qed

*Замечание*: 
$f$ непр. на $[a, b] stretch(=>)^"Т. Коши о"_"промеж. знач-ях"$, 
$ exists xi in [a, b] quad f(xi) = mu, limits(integral)_(a)^(b) f(x) g(x) d x = f(xi) limits(integral)_(a)^(b) g(x) d x. $ \ 
#conseq() 
$ g(x) equiv 1 ==> limits(integral)_(a)^(b) f(x) d x  = f(xi)(b - a) $
$f$ непр. на $[a, b] ==>$ 
$ exists xi in [a, b] quad limits(integral)_(a)^(b) f(x) d x = f(xi) (b - a). $

#theorem(name: "операции над интегрируемыми функциями") 
$f, g in Re_([a, b]) ==> abs(f), f dot g in Re_([a, b]), (f)/(g) in Re_([a, b])$ при усл. $exists c > 0 forall x in [a, b] abs(g(x)) >= c$. \ 
#proof 
Пусть $epsilon > 0, S(f, P) - s(f, P) < epsilon$.\ 
+ Докажем, что $abs(f)$ интегрируема: \ $forall xi, eta in Delta_k quad abs(f(xi)) - abs(f(eta)) <= abs(f(xi) - f(eta)) <= M_(k)(f) - m_(k)(f)$, \ $M_(k)(f) = limits(sup)_(x in Delta_k) f(x), quad m_(k)(f) = limits(inf)_(x in Delta_k) f(x) ==> M_(k)(abs(f)) - m_(k)(abs(f)) <= M_(k)(f) - m_(k)(f) ==> S(abs(f), P) - s(abs(f), P) <= S(f, P) - s(f, P) < epsilon stretch(=>)_"крит. инт-сти" abs(f) in Re_([a, b])$.\ 
+ Докажем, что $f^(2)$ интегрируема: \ $f$ интегрируема $==> f$ огр. $exists A > 0 forall x in [a, b] abs(f(x)) <= A$. \ Пусть $xi, eta in Delta_(k)$, тогда $f^(2)(xi) - f^(2)(eta) = (f(xi) + f(eta))(f(xi) - f(eta)) <= 2A(f(xi) - f(eta)) <= 2A(M_(k)(f) - m_(k)(f)) ==> S(f^(2), P) - s(f^(2), P) <= 2A(S(f, P) - s(f, P)) < 2A epsilon stretch(=>)_"крит. инт-сти"$ \ $f^(2) in Re_([a, b])$. Т.к. $f dot g = (1)/(4)((f + g)^(2) - (f - g)^(2)) ==> f dot g in Re_([a, b])$.\ 
+ Докажем, что $(1)/(f)$ интегрируема: \ $ (1)/(f(xi)) - (1)/(f(eta)) = (f(eta) - f(xi))/(f(xi)f(eta)) <= (1)/(C^(2))(M_(k)(f) - m_(k)(f)) ==> \ M_(k)((1)/(f)) - m_(k)((1)/(f)) <= (1)/(C^(2))(M_(k)(f) - m_(k)(f)), \ S((1)/(f), P) - s((1)/(f), P) <= (1)/(C^(2))(S(f, P) - s(f, P)) < (1)/(C^(2)) epsilon stretch(=>)_"крит. инт-сти" (1)/(f) in Re_([a, b]) ==> (f)/(g) in Re_([a, b]). $ #qed

*Замечание*: 
Из интегрируемости $abs(f)$ не следует интегрируемость $f$.
