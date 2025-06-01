= №9 Несобственные инт-ы Римана двух типов и их простейшие св-ва. Критерий Коши сходимости несобств. инт-а.

*Опр.:* Пусть $f$ опр. на $[a, +infinity), forall b in [a, +infinity) f in Re[a, b]$. $lim_(b -> +infinity) integral_(a)^(b) f(x) d x$ наз. несобственным инт-ом 1–го рода, если он сущ. и конечен. Обозн.: $integral_(a)^(+infinity) f(x) d x$. При этом несобств. инт. сходится. Аналогично определяют $integral_(-infinity)^(b) f(x) d x$.\ 
*Опр.:* Пусть $f$ опр. на $[a, B)$, неогр. в $O(B)$ и $forall b in [a, B) f in Re [a, b]$. $lim_(b -> B-0) integral_(a)^(b) f(x) d x$, наз. несобственным инт-ом 2–го рода, если он сущ. и конечен. Обозн.: $integral_(a)^(B) f(x) d x$. При этом несобств. инт. сход.\ 
*Опр.:* Пусть $f$ опр. на $[a, omega)$ и $forall [a, b] subset [a, omega) f in Re [a, b]$. Тогда: $integral_(a)^(omega) f(x) d x := lim_(b -> omega) integral_(a)^(b) f(x) d x$. 

*Т. (св-ва несобст. инт-а Римана.):* $integral_(a)^(omega) f(x) d x$ и $integral_(a)^(omega) g(x) d x$ сход., тогда:\ 
a) $omega in RR, f in Re [a, omega] ==>$ знач–я $integral_(a)^(omega) f(x) d x$ в несобств. и собств. смысле равны.\ 
b) $forall lambda a_(1), lambda a_(2) in RR$ ф–ция $lambda a_(1) f + lambda a_(2) g$ инт. в несобств. смысле и $integral_(a)^(omega) (lambda a_(1) f(x) + lambda a_(2) g(x)) d x = lambda a_(1) integral_(a)^(omega) f(x) d x + lambda a_(2) integral_(a)^(omega) g(x) d x$.\ 
c) $c in [a, omega) ==> integral_(a)^(omega) f(x) d x = integral_(a)^(c) f(x) d x + integral_(c)^(omega) f(x) d x$.\
d) $phi$ непр. дифф. и строго монотонна на $[alpha, gamma)$, $phi(alpha) = a$ и $phi(beta) -> omega$ при $beta -> gamma, beta in [alpha, gamma) ==>$ несобств. инт. от ф-ции $(f compose phi)phi'$ на $[alpha, gamma)$ сущ. и $integral_(a)^(omega) f(x) d x = integral_(alpha)^(gamma) f(phi(t))phi'(t) d t$.\ 
*Док-во:* a) Следует из непр-сти ф-ции $F(b) = integral_(a)^(b) f(x) d x$ на $[a, omega]$ при $f in Re[a, omega]$.\
b) Следует из того, что при $b in [a, omega)$ $integral_(a)^(b) (lambda_(1) f(x) + lambda_(2) g(x)) d x = lambda_(1) integral_(a)^(b) f(x) d x + lambda_(2) integral_(a)^(b) g(x) d x$.\
c) Следует из того, что $forall b, c in [a,omega)$ $integral_(a)^(b) f(x) d x = integral_(a)^(c) f(x) d x + integral_(c)^(b) f(x) d x$.\
d) Следует из того, что $integral_(a = phi(alpha))^(b = phi(beta)) f(x) d x = integral_(alpha)^(beta) f(phi(t))phi'(t) d t$.

*Т. (Крит. Коши сход-ти несобст. инт-а):* $integral_(a)^(omega) f(x)d x$ сход. $<==> forall epsilon > 0 exists B in [a, omega) forall b_(1), b_(2) in (B, omega) abs(integral_(b_(1))^(b_(2)) f(x) d x) < epsilon$.\ 
*Док-во:* По опр. несобст. инт-а он сход. $<==>$ сущ. и конечен $lim_(b -> infinity) F(b) = integral_(a)^(b) f(x) d x$, $b in [a, omega)$, а $integral_(b_(1))^(b_(2)) f(x) d x = integral_(a)^(b_(2)) f(x) d x - integral_(a)^(b_(1)) f(x) d x = F(b_(2)) - F(b_(1))$. Тогда ф-ция $F$ имеет предел при $b -> omega$ по Крит. Коши сущ-я предела ф-ции.
