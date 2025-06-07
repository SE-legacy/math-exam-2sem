#import "../functions.typ": *

= Абсолютная сходимость несобственного интеграла, связь со сходимостью. Признак мажорации и признак сравнения сходимости несобственных интегралов

#def 
$limits(integral)_(a)^(omega) f(x) d x$ сходится абсолютно, если сходится $limits(integral)_(a)^(omega) abs(f(x)) d x$. 

#theorem(name: "о сходимости абс. сходящегося интеграла") 
$limits(integral)_(a)^(omega) f(x) d x$ абс. сходится $==>$ он сходится \ 
#proof 
По св-вам несобственного интеграла 
$ abs(limits(integral)_(b_(1))^(b_(2)) f(x) d x) <= limits(integral)_(b_(1))^(b_(2)) abs(f(x)) d x. $
По Крит. Коши сходимости несобст. интеграла интеграл сходится.

#theorem() 
Пусть $forall x in [a, omega) #h(4pt) f(x) >= 0$. 
$ limits(integral)_(a)^(omega) f(x) d x "сход." <==> F(b) = limits(integral)_(a)^(b) f(x) d x, b in [a,omega) "огр." $ \ 
#proof 
$forall x in [a, omega) f(x) >= 0 ==> F(b) = limits(integral)_(a)^(b) f(x) d x$ не убывает на $[a, omega) ==>$ она имеет предел при $b -> omega, b in [a, omega) <==>$ она огр. #qed

#theorem(name: "признак мажорации") 
$forall x in [a, omega) 0 <= f(x) <= g(x)$ и
$limits(integral)_(a)^(omega) g(x) d x$ сход. $==> limits(integral)_(a)^(omega) f(x) d x$ сход.\ 
#proof 
$limits(integral)_(a)^(omega) g(x) d x$ сход. $==>$ ф-ция $G(b) = limits(integral)_(a)^(b) g(x) d x, b in [a, omega)$ огр. По свойству монотонности собственного интеграла 
$ 0 <= F(b) = limits(integral)_(a)^(b) f(x) d x <= limits(integral)_(a)^(b) g(x) d x = G(b) ==> $ $F$ огр. По предыдущей теореме $limits(integral)_(a)^(omega) f(x) d x$ сход. #qed

#theorem(name: "признак сравнения") 
$forall x in [a, omega) f(x) >= 0, g(x) >= 0, #h(4pt) 0 < A < +infinity$ и 
$ lim_(x -> omega) f(x)/g(x) = A ==> $
$limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ одновременно сходятся или расходятся \ 
#proof 
Пусть $epsilon = A/2 > 0 quad exists c in [a, omega)$ такое, что при $x in [c, omega)$
$ abs(f(x)/g(x) - A) < A/2, " т.е. " A/2 g(x) < f(x) < 3/2 A g(x). $ 
Остаётся воспользоваться признаком мажорации и пунктом 3 из теоремы о свойствах несобст. интеграла. #qed
