*Опр.:* Пусть $f$ опр. на $[a, +infinity), forall b in [a, +infinity) f in Re[a, b]$. $limits(lim)_(b -> +infinity) limits(integral)_(a)^(b) f(x) d x$ наз. несобственным инт-ом 1–го рода, если он сущ. и конечен. Обозн.: $limits(integral)_(a)^(+infinity) f(x) d x$. При этом несобств. инт. сходится. Аналогично определяют $limits(integral)_(-infinity)^(b) f(x) d x$.\ 
*Опр.:* Пусть $f$ опр. на $[a, B)$, неогр. в $O(B)$ и $forall b in [a, B) f in Re [a, b]$. $limits(lim)_(b -> B-0) limits(integral)_(a)^(b) f(x) d x$, наз. несобственным инт-ом 2–го рода, если он сущ. и конечен. Обозн.: $limits(integral)_(a)^(B) f(x) d x$. При этом несобств. инт. сход.\ 
*Опр.:* Пусть $f$ опр. на $[a, omega)$ и $forall [a, b] subset [a, omega) f in Re [a, b]$. Тогда: $limits(integral)_(a)^(omega) f(x) d x := limits(lim)_(b -> omega) limits(integral)_(a)^(b) f(x) d x$. 

*Т. (св-ва несобст. инт-а Римана.):* $limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ сход., тогда:\ 
a) $omega in RR, f in Re [a, omega] ==>$ знач–я $limits(integral)_(a)^(omega) f(x) d x$ в несобств. и собств. смысле равны.\ 
b) $forall lambda a_(1), lambda a_(2) in RR$ ф–ция $lambda a_(1) f + lambda a_(2) g$ инт. в несобств. смысле и $limits(integral)_(a)^(omega) (lambda a_(1) f(x) + lambda a_(2) g(x)) d x = lambda a_(1) limits(integral)_(a)^(omega) f(x) d x + lambda a_(2) limits(integral)_(a)^(omega) g(x) d x$.\ 
c) $c in [a, omega) ==> limits(integral)_(a)^(omega) f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(omega) f(x) d x$.\
d) $phi$ непр. дифф. и строго монотонна на $[alpha, gamma)$, $phi(alpha) = a$ и $phi(beta) -> omega$ при $beta -> gamma, beta in [alpha, gamma) ==>$ несобств. инт. от ф-ции $(f compose phi)phi'$ на $[alpha, gamma)$ сущ. и $limits(integral)_(a)^(omega) f(x) d x = limits(integral)_(alpha)^(gamma) f(phi(t))phi'(t) d t$.\ 
*Док-во:* a) Следует из непр-сти ф-ции $F(b) = limits(integral)_(a)^(b) f(x) d x$ на $[a, omega]$ при $f in Re[a, omega]$.\
b) Следует из того, что при $b in [a, omega)$ $limits(integral)_(a)^(b) (lambda_(1) f(x) + lambda_(2) g(x)) d x = lambda_(1) limits(integral)_(a)^(b) f(x) d x + lambda_(2) limits(integral)_(a)^(b) g(x) d x$.\
c) Следует из того, что $forall b, c in [a,omega)$ $limits(integral)_(a)^(b) f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(b) f(x) d x$.\
d) Следует из того, что $limits(integral)_(a = phi(alpha))^(b = phi(beta)) f(x) d x = limits(integral)_(alpha)^(beta) f(phi(t))phi'(t) d t$.

*Т. (Крит. Коши сход-ти несобст. инт-а):* $limits(integral)_(a)^(omega) f(x)d x$ сход. $<==> forall epsilon > 0 exists B in [a, omega) forall b_(1), b_(2) in (B, omega) abs(limits(integral)_(b_(1))^(b_(2)) f(x) d x) < epsilon$.\ 
*Док-во:* По опр. несобст. инт-а он сход. $<==>$ сущ. и конечен $limits(lim)_(b -> infinity) F(b) = limits(integral)_(a)^(b) f(x) d x$, $b in [a, omega)$, а $limits(integral)_(b_(1))^(b_(2)) f(x) d x = limits(integral)_(a)^(b_(2)) f(x) d x - limits(integral)_(a)^(b_(1)) f(x) d x = F(b_(2)) - F(b_(1))$. Тогда ф-ция $F$ имеет предел при $b -> omega$ по Крит. Коши сущ-я предела ф-ции.
