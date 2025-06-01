= №10. Абсолютная сход-ть несобст. инт-а, связь со сходимостью. Признак мажорации и признак сравнения сход-ти несобст. инт-ов. 

*Опр.:* $integral_(a)^(omega) f(x) d x$ сходится абсолютно, если $integral_(a)^(omega) |f(x)| d x$ сходится. 

*Т. (о сход–ти абс. сход. инт-а):* $integral_(a)^(omega) f(x) d x$ абс. сход. $==>$ он сход.\ 
*Док-во:* По св-вам несобственного инт-а $abs(integral_(b_(1))^(b_(2)) f(x) d x) <= integral_(b_(1))^(b_(2)) |f(x)| d x$.\ По Крит. Коши сход-ти несобст. инт-а интеграл сходится.

*Т.:* Пусть $forall x in [a, omega) f(x) >= 0$. Тогда $integral_(a)^(omega) f(x) d x$ сход. $<==> F(b) = integral_(a)^(b) f(x) d x, b in [a,omega)$ огр.\ 
*Док-во:* $forall x in [a, omega) f(x) >= 0 ==> F(b) = integral_(a)^(b) f(x) d x$ не убывает на $[a, omega) ==>$ она имеет предел при $b -> omega, b in [a, omega) <==>$ она огр.

*Т. (признак мажорации):* $forall x in [a, omega) 0 <= f(x) <= g(x)$ и
$integral_(a)^(omega) g(x) d x$ сход. $==> integral_(a)^(omega) f(x) d x$ сход.\ 
*Док-во:* $integral_(a)^(omega) g(x) d x$ сход. $==>$ ф-ция $G(b) = integral_(a)^(b) g(x) d x, b in [a, omega)$ огр. По св-ву монотонности собственного инт-а $0 <= F(b) = integral_(a)^(b) f(x) d x <= integral_(a)^(b) g(x) d x = G(b) ==>$ ф-ция $F$ огр. По пред. Т. $integral_(a)^(omega) f(x) d x$ сход. 

*Т. (признак сравнения):* $forall x in [a, omega) f(x) >= 0, g(x) >= 0$ и $lim_(x -> omega) (f(x)/g(x)) = A, 0 < A < +infinity ==> integral_(a)^(omega) f(x) d x$ и $integral_(a)^(omega) g(x) d x$ одновременно сход. или расход.\ 
*Док-во:* Пусть $epsilon = A/2 > 0$. $exists c in [a, omega)$ такая, что при $x in [c, omega) abs(f(x)/g(x) - A) < A/2$, т.е. $A/2 g(x) < f(x) < 3/2 A g(x)$ при $x in [c, omega)$. Остаётся воспользоваться признаком мажорации и пунктом (c) из Т. о св-вах несобст. инт-а. 
