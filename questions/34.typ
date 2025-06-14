= №10. Абсолютная сход-ть несобст. инт-а, связь со сходимостью. Признак мажорации и признак сравнения сход-ти несобст. инт-ов. 

*Опр.:* $limits(integral)_(a)^(omega) f(x) d x$ сходится абсолютно, если $limits(integral)_(a)^(omega) |f(x)| d x$ сходится.\ 
*Т. (о сход–ти абс. сход. инт-а):* $limits(integral)_(a)^(omega) f(x) d x$ абс. сход. $==>$ он сход.\ 
*Док-во:* По св-вам несобственного инт-а $abs(limits(integral)_(b_(1))^(b_(2)) f(x) d x) <= limits(integral)_(b_(1))^(b_(2)) |f(x)| d x$.\ По Крит. Коши сход-ти несобст. инт-а интеграл сходится.\
*Т.:* Пусть $forall x in [a, omega) f(x) >= 0$. Тогда $limits(integral)_(a)^(omega) f(x) d x$ сход. $<==> F(b) = limits(integral)_(a)^(b) f(x) d x, b in [a,omega)$ огр.\ 
*Док-во:* $forall x in [a, omega) f(x) >= 0 ==> F(b) = limits(integral)_(a)^(b) f(x) d x$ не убывает на $[a, omega) ==>$ она имеет предел при $b -> omega, b in [a, omega) <==>$ она огр.\
*Т. (признак мажорации):* $forall x in [a, omega) 0 <= f(x) <= g(x)$ и
$limits(integral)_(a)^(omega) g(x) d x$ сход. $==> limits(integral)_(a)^(omega) f(x) d x$ сход.\ 
*Док-во:* $limits(integral)_(a)^(omega) g(x) d x$ сход. $==>$ ф-ция $G(b) = limits(integral)_(a)^(b) g(x) d x, b in [a, omega)$ огр. По св-ву монотонности собственного инт-а $0 <= F(b) = limits(integral)_(a)^(b) f(x) d x <= limits(integral)_(a)^(b) g(x) d x = G(b) ==>$ ф-ция $F$ огр. По пред. Т. $limits(integral)_(a)^(omega) f(x) d x$ сход.\ 
*Т. (признак сравнения):* $forall x in [a, omega) f(x) >= 0, g(x) >= 0$ и $limits(lim)_(x -> omega) (f(x)/g(x)) = A, 0 < A < +infinity ==> limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ одновременно сход. или расход.\ 
*Док-во:* Пусть $epsilon = A/2 > 0$. $exists c in [a, omega)$ такая, что при $x in [c, omega) abs(f(x)/g(x) - A) < A/2$, т.е. $A/2 g(x) < f(x) < 3/2 A g(x)$ при $x in [c, omega)$. Остаётся воспользоваться признаком мажорации и пунктом (c) из Т. о св-вах несобст. инт-а. 
