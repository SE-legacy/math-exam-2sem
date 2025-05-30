= №5 Св-ва интеграла Римана: линейность, аддитивность, монотонность, первая Т. о среднем. Операции над инт. функциями.

*Т. (линейность интеграла):* $f, g in Re[a, b], c in RR ==> f + g, c f in Re[a, b]$ и $integral_(a)^(b) (f(x) + g(x)) d x = integral_(a)^(b) f(x) d x + integral_(a)^(b) g(x) d x$, $integral_(a)^(b) c f(x) d x = c integral_(a)^(b) f(x) d x$.\
*Док-во:* $sigma(f + g, P, xi_(P)) = sigma(f, P, xi_(P)) + sigma(g, P, xi_(P)), sigma(c f, P, xi_(P)) = c dot sigma(f, P, xi_(P))$\

*Т. (аддитивность интеграла):* Пусть $a < c < b$, тогда $f in Re[a, b] <==> f in Re[a, c]$ и $f in Re[c, b]$, $integral_(a)^(b) f(x) d x = integral_(a)^(c) f(x) d x + integral_(c)^(b) f (x) d x$.\
*Док-во:* $arrow.r.double.long.bar f in Re[a, b], epsilon > 0 ==>$ По Крит. инт-сти $exists P_([a, b]): S(P) - s(P) < epsilon$. Пусть $P^(*) = P union {c}$, тогда $S(P^(*)) - s(P^(*)) <= S(P) - s(P) < epsilon$. $P^(*) = P'_([a, c]) union P''_([c, b]) = P' union P''$, $(S(P') - s(P') <= S(P^(*)) - s(P^(*)) < epsilon, (S(P'') - s(P'') <= S(P^(*)) - s(P^(*)) < epsilon ==>$ По Крит. инт-сти $f in Re[a, c]$ и $f in Re[c, b]$.\
$arrow.l.double.long.bar f in Re[a, c]$ и $f in Re[c, b], epsilon > 0$. $exists P' = P'_([a, c])$ и $exists P'' = P''_([c, b]): S(P') - s(P') < (epsilon)/(2), S(P'') - s(P'') < (epsilon)/(2)$. Тогда для $P = P_([a, b]) = P' union P''$ $S(P) - s(P) < (epsilon)/(2) + (epsilon)/(2) < epsilon$ т.е. $f in Re[a, b]$, ч.т.д. 

*Т. (монотонность интеграла):* $f, g in Re[a, b], forall x in[a, b] f(x) <= g(x) ==> integral_(a)^(b) f(x) d x <= integral_(a)^(b) g(x) d x$.\ 
*Док-во:* $forall P, forall xi_(P) sigma(f, P, xi_(P)) <= sigma(g, P, xi_(P))$. Переходя к пределу при $d(P) -> 0$: $integral_(a)^(b) f(x) d x <= integral_(a)^(b) g(x) d x$.\
*След-е 1:* $f in Re[a, b], forall x f(x) >= 0 ==> integral_(a)^(b) f(x) d x >= 0$.\
*След-е 2:* $f in Re[a, b] ==> |integral_(a)^(b) f(x) d x| <= integral_(a)^(b) |f(x)| d x <= limits(sup)_(x in[a, b]) |f(x)| (b - a)$. 

*Т. (первая теорема о среднем):* $f, g in Re[a, b], forall x in [a, b] g(x) >= 0 (g(x) <= 0), M = sup_(x in[a, b]) f(x), m = inf_(x in[a, b]) f(x) ==> exists mu in [m, M]: integral_(a)^(b) f(x) g(x) d x = mu integral_(a)^(b) g(x) d x$.\
*Док-во:* $forall x in [a, b] g(x) >= 0, m <= f(x) <= M ==> m g(x) <= f(x) g(x) <= M g(x) ==> m integral_(a)^(b) g(x) d x <= integral_(a)^(b) f(x) g(x) d x <= M integral_(a)^(b) g(x) d x$. 
1) Если $integral_(a)^(b) g(x) d x = 0 ==> 0 = 0$, 
2) $integral_(a)^(b) g(x) d x > 0 ==> m <= (integral_(a)^(b) f(x) g(x) d x)/(integral_(a)^(b) g(x) d x) <= M$, $(integral_(a)^(b) f(x) g(x) d x)/(integral_(a)^(b) g(x) d x) = mu$.\
*Замеч-е:* $f$ непр. на $[a, b] ==>$ По Т. Коши о промеж. знач-ях: $exists xi in [a, b], f(xi) = mu, integral_(a)^(b) f(x) g(x) d x = f(xi) integral_(a)^(b) g(x) d x$.\
*След-е:* Если $g(x) equiv 1$, то $integral_(a)^(b) f(x) d x = f(xi) integral_(a)^(b) 1 d x = f(xi)(b - a)$

*Т. (операции над интегрируемыми функциями):* $f, g in Re[a, b] ==> |f|, f dot g in Re[a, b], (f)/(g) in Re[a, b]$ при усл. $exists c > 0 forall x in [a, b] |g(x)| >= c$.\
*Док-во:* Пусть $epsilon > 0, S(f, P) - s(f, P) < epsilon$. 
1) Докажем, что $|f|$ инт.: $forall xi, eta in Delta_(k) |f(xi)| - |f(eta)| <= |f(xi) - f(eta)| <= M_(k)(f) - m_(k)(f), M_(k)(f) = sup_(x in Delta k) f(x), m_(k)(f) = inf_(x in Delta k) f(x)$. Тогда $M_(k)(|f|) - m_(k)(|f|) <= M_(k)(f) - m_(k)(f) ==> S(|f|, P) - s(|f|, P) <= S(f, P) - s(f, P) < epsilon ==>$ По Крит. инт-сти $|f| in Re[a, b]$. 
2) Докажем, что $f^(2)$ инт.:$f$ инт. $==> f$ огр. $exists A > 0 forall x in [a, b] |f(x)| <= A$. Пусть $xi, eta in Delta_(k)$, тогда $f^(2)(xi) - f^(2)(eta) = (f(xi) + f(eta))(f(xi) - f(eta)) <= 2A(f(xi) - f(eta)) <= 2A(M_(k)(f) - m_(k)(f)) ==> S(f^(2), P) - s(f^(2), P) <= 2A(S(f, P) - s(f, P)) < 2A epsilon ==>$ по Крит. инт-сти $f^(2) in Re[a, b]$. Т.к. $f dot g = (1)/(4)((f + g)^(2) - (f - g)^(2)) ==> f dot g in Re[a, b]$. 
3) Докажем, что $(1)/(f)$ инт.: $(1)/(f(xi)) - (1)/(f(eta)) = (f(eta) - f(xi))/(f(xi)f(eta)) <= (1)/(C^(2))(M_(k)(f) - m_(k)(f)) ==> M_(k)((1)/(f)) - m_(k)((1)/(f)) <= (1)/(C^(2))(M_(k)(f) - m_(k)(f)), S((1)/(f), P) - s((1)/(f), P) <= (1)/(C^(2))(S(f, P) - s(f, P)) < (1)/(C^(2)) epsilon ==>$ по Крит. инт-сти $(1)/(f) in Re[a, b] ==> (f)/(g) in Re[a, b]$, ч.т.д. 
Замеч-е: Из инт-сти $|f|$ не следует инт-сть $f$.

