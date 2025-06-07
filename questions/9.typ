#import "../functions.typ": *

= Несобственные интегралы Римана двух типов и их простейшие свойства. Критерий Коши сходимости несобственного интеграла

#def 
Пусть $f$ опр. на $[a, +infinity), forall b in [a, +infinity) #h(4pt) f in Re_([a, b])$
$ limits(integral)_(a)^(+infinity) f(x) d x colon.eq  limits(lim)_(b -> +infinity) limits(integral)_(a)^(b) f(x) d x $
и наз. несобственным интегралом 1–го рода, если предел существует и конечен.
Тогда говорят, что несобственный интеграл сходится. Аналогично определяют $limits(integral)_(-infinity)^(b) f(x) d x$.

#def 
Пусть $f$ опр. на $[a, B)$, неогр. в $O(B)$ и $forall b in [a, B) #h(4pt) f in Re_([a, b])$
$ limits(integral)_(a)^(B) f(x) d x colon.eq limits(lim)_(b -> B-0) limits(integral)_(a)^(b) f(x) d x $
и наз. несобственным интегралом 2–го рода, если предел существует и конечен. Тогда говорят, что несобственный интеграл сходится.

#def 
Пусть $f$ опр. на $[a, omega)$ и $forall [a, b] subset [a, omega) #h(4pt) f in Re_([a, b])$
$ limits(integral)_(a)^(omega) f(x) d x colon.eq limits(lim)_(b -> omega) limits(integral)_(a)^(b) f(x) d x. $ 

#theorem(name: "св-ва несобст. интеграла Римана") 
$limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ сходятся, тогда:

+ $omega in RR, f in Re [a, omega] ==>$ значения $limits(integral)_(a)^(omega) f(x) d x$ в несобств. и собств. смысле равны.

+ $forall lambda a_(1), lambda a_(2) in RR ==> lambda a_(1) f + lambda a_(2) g$ интегрируема в несобств. смысле и $ limits(integral)_(a)^(omega) (lambda a_(1) f(x) + lambda a_(2) g(x)) d x = lambda a_(1) limits(integral)_(a)^(omega) f(x) d x + lambda a_(2) limits(integral)_(a)^(omega) g(x) d x. $

+ $c in [a, omega) ==>$ $ limits(integral)_(a)^(omega) f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(omega) f(x) d x. $

+ $phi$ непр. дифф. и строго монотонна на $[alpha, gamma), #h(4pt) phi(alpha) = a$ и $phi(beta) -> omega$ при $beta -> gamma, beta in [alpha, gamma) ==>$ несобств. интеграл от $(f compose phi)phi'$ на $[alpha, gamma)$ существует и $ limits(integral)_(a)^(omega) f(x) d x = limits(integral)_(alpha)^(gamma) f(phi(t))phi'(t) d t. $ \ 
#proof
+ Следует из непрерывности функции $F(b) = limits(integral)_(a)^(b) f(x) d x$ на $[a, omega]$ при $f in Re[a, omega]$.

+ Следует из того, что при $b in [a, omega)$ $ limits(integral)_(a)^(b) (lambda_(1) f(x) + lambda_(2) g(x)) d x = lambda_(1) limits(integral)_(a)^(b) f(x) d x + lambda_(2) limits(integral)_(a)^(b) g(x) d x. $

+ Следует из того, что $forall b, c in [a,omega)$ $ limits(integral)_(a)^(b) f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(b) f(x) d x. $

+ Следует из того, что $ limits(integral)_(a = phi(alpha))^(b = phi(beta)) f(x) d x = limits(integral)_(alpha)^(beta) f(phi(t))phi'(t) d t. $ #qed

#theorem(name: "Крит. Коши сходимости несобст. интеграла") 
$ limits(integral)_(a)^(omega) f(x)d x "сходится" <==> forall epsilon > 0 #h(4pt) exists B in [a, omega) #h(4pt) forall b_(1), b_(2) in (B, omega) #h(4pt) abs(limits(integral)_(b_(1))^(b_(2)) f(x) d x) < epsilon. $\ 
#proof 
По опр. несобст. интеграла он сходится $<==>$ существует и конечен 
$ limits(lim)_(b -> infinity) F(b) = limits(integral)_(a)^(b) f(x) d x quad b in [a, omega), " и" $
$ limits(integral)_(b_(1))^(b_(2)) f(x) d x = limits(integral)_(a)^(b_(2)) f(x) d x - limits(integral)_(a)^(b_(1)) f(x) d x = F(b_(2)) - F(b_(1)). $
Тогда $F$ имеет предел при $b -> omega$ по Крит. Коши существования предела функции. #qed
