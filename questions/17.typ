= №22. Равномерная норма функций и её св-ва. Поточ. и равн. сход-ть функ. послед. Крит. Коши равн. сход.

*Опр.*: Пусть функ. $f$ опр. на множ. $X$. Равном. норм. обознач. символом $norm(f) = limits(sup)_(x in X) |f(x)|$.\
Свойства: 
1) $forall x in X$ $abs(f(x)) <= norm(f)$; 
2) $norm(f) < +infinity <==> f$ огр. 
3) $norm(f) >=0$ и $norm(f) = 0$ $<==>$ $forall x in X$ $f(x) = 0$;
4) $forall lambda in RR norm(lambda f) = abs(lambda) dot norm(f)$;\
5) $norm(f+g) <= norm(f) + norm(g)$; 
6) $norm(f dot g) <= norm(f) dot norm(g)$.\
*Опр.*: Послед. $(f_n)$ сх. в т. $x_0 in X$, если сх. числ. посл. $f_n (x_0)$.\
*Опр.*: $(f_n)$ поточ. сх. на мн. $M subset X, $ если $(f_n)$ сх. во всех т. мн. $M$.\
*Опр.*: $(f_n)$ равн. сх. к ф-ции $f$, если $limits(lim)_(n -> infinity) norm(f_n - f) = 0$, обозн. как $f_n arrows f$.\
*Т. (Крит. Коши равн. сх.)*: послед. $(f_n)$ равн. сх. $<==> forall epsilon > 0$ $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall m >= n_(epsilon)$ $norm(f_n - f_m) < epsilon$.\
*Док-во*: $==>$ : Пусть $epsilon > 0$. Т.к. $f_n arrows f$, то $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall x in X$ $abs(f_n (x) - f(x)) < epsilon/2$, то $forall x in X$ $forall m >= n_(epsilon)$ $abs(f_n (x) - f_m (x)) = abs(f_m (x) - f(x) + f(x) - f_n (x)) <= abs(f_m (x) - f(x)) + abs(f_n (x) - f(x)) < epsilon/2 + epsilon/2 = epsilon $, т.е. выполн. услов. крит. Коши.\
$<==$: Услов. крит. Коши равносильно $forall epsilon > 0$ $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall m >= n_(epsilon)$ $forall x in X$ $abs(f_m (x) - f_n (x)) < epsilon$, т.е. $forall x in X$ послед. $(f_n (x))$ фунд. $<==>$ $(f_n (x))$ сход. Пусть $f$ --- поточ. пред. послед. $(f_n (x))$. Переходя к пред. при $m -> infinity$ в пред. условии:
$forall epsilon > 0$ $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall x in X$ $abs(f(x) - f_n (x)) <= epsilon$, т.е. $f_n arrows f$.
