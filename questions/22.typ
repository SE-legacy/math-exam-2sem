#import "../functions.typ": *

= Равномерная норма функций и ее свойства. Поточечная и равномерная сходимости функциональных последовательностей. Критерий Коши равномерной сходимости

#def Пусть функ. $f$ опр. на множ. $X$. Равном. норм. обознач. символом $norm(f) = limits(sup)_(x in X) |f(x)|$

#properties
+ $forall x in X$ $abs(f(x)) <= norm(f)$;
+ $norm(f) < +infinity <==> f$ огр;
+ $norm(f) >=0$ и $norm(f) = 0$ $<==>$ $forall x in X$ $f(x) = 0$;
+ $forall lambda in RR norm(lambda f) = abs(lambda) dot norm(f)$;
+ $norm(f+g) <= norm(f) + norm(g)$;
+ $norm(f dot g) <= norm(f) dot norm(g)$.

#def Послед. $(f_n)$ сх. в т. $x_0 in X$, если сх. числ. посл. $f_n (x)$

#def Послед. $(f_n)$ поточ. сх. на мн. $M subset X, $ если послед. $(f_n)$ сх. во всех т. мн. $M$

#def Послед. $(f_n)$ равн. сх. к ф-ции $f$, если $limits(lim)_(n -> infinity) norm(f_n - f) = 0$, обозн. как $f_n arrows f$

#theorem(name: "Крит. Коши равн. сх.") послед. $(f_n)$ равн. сх. $<==> forall epsilon > 0$ $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall m >= n_(epsilon)$ $norm(f_n - f_m) < epsilon$

#proof $==>$ : Пусть $epsilon > 0$. Т.к. $f_n arrows f$, то $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall x in X$ $abs(f_n (x) - f(x)) < epsilon/2$, то $forall x in X$ $forall m >= n_(epsilon)$ $abs(f_n (x) - f_m (x)) = abs(f_m (x) - f(x) + f(x) - f_n (x)) <= abs(f_m (x) - f(x)) + abs(f_n (x) - f(x)) < epsilon/2 + epsilon/2 = epsilon $, т.е. выполн. услов. крит. Коши

$<==$: Услов. крит. Коши равносильно $forall epsilon > 0$ $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall m >= n_(epsilon)$ $forall x in X$ $abs(f_m (x) - f_n (x)) < epsilon$, т.е. $forall x in X$ послед. $(f_n (x))$ фунд. $<==>$ $(f_n (x))$ сход. Пусть $f$ --- поточ. пред. послед. $(f_n (x))$. Переходя к пред. при $m -> infinity$ в пред. условии:
$forall epsilon > 0$ $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall x in X$ $abs(f(x) - f_n (x)) <= epsilon$, т.е. $f_n arrows f$


