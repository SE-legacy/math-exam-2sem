= №29. Пространство $RR^m$. Послед-ти в $RR^m$ и их св-ва

*Опр.*: Пусть число $m in NN$. Множ. упорядоченных наборов $(x_1, x_2, dots, x_m)$, где $x_i in RR$, $i = 1, dots, m$, называют
пространством $RR^m$.\
*Опр.*: Будем обозначать $overline(x) = (x_1, x_2, dots, x_m)$ и называть точкой или вектором.\
Опред. в $RR^m$ неск. операций: Пусть $overline(x) = (x_1, dots, x_m)$ и $overline(y) = (y_1, dots, y_m)$.
1. Сложение. $overline(x) + overline(y) = (x_1 + y_1, dots, x_m + y_m)$.
2. Умнож-е на скаляр. Если $lambda in RR$, то $lambda overline(x) = (lambda x_1, dots, lambda x_m)$.
3. Отнош-е равенства. Пусть $overline(0) = (0, dots, 0)$, тогда $overline(x) = overline(y) <==> overline(x) - overline(y) = overline(0)$.
4. Скалярн. произв-е. $overline(x) dot overline(y) = x_1 y_1 + dots + x_m y_m$. 
5. Евклидова норма. $abs(overline(x)) = sqrt(x_1^2 + dots + x_m^2)$.
*Т.(нерав. Коши-Буняковского-Шварца):* $abs(overline(x) dot overline(y)) <= abs(overline(x)) dot abs(overline(y))$.\
*Док-во:* Пусть $A = limits(sum)_(i = 1)^(m) x_i^2, B = limits(sum)_(i = 1)^(m) y_i^2, C = limits(sum)_(i = 1)^(m) x_i y_i$.\ Если $B = 0$, то $y_i = 0, i = 1, dots, m$ и нерав. принимает вид $0 <= 0$.\ Пусть $B > 0$. Тогда $0 <= limits(sum)_(i = 1)^(m) (B x_i - C y_i)^2 = B^2 limits(sum)_(i = 1)^(m) x_i^2 - 2 B C limits(sum)_(i = 1)^(m) x_i y_i + C^2 limits(sum)_(i = 1)^(m) y_i^2 = B^2A - 2 B C^2 + B C^2 = B^2 A - B C^2 = B(A B - C^2)$ и\ $A B - C^2 >= 0 ==> C^2 <= A B ==> abs(C) <= sqrt(A) sqrt(B)$.\
*Опр.*: Отображение множ. $NN$ в множ. $RR^m$ называем послед-тью и обозначаем $(overline(x)_n)$ или $(overline(x)_n)_(n=1)^(infinity)$, где
$overline(x)_n = (x_(1 n), dots, x_(m n))$.\
*Опр.*:
- $overline(x)_n = O(1) <==> exists M > 0$ $forall n in NN$ $abs(overline(x)_n) <= M$;
- $overline(x)_n = o(1) <==> forall epsilon > 0$ $exists n_epsilon in NN$ $forall n >= n_epsilon$ $overline(x)_n < epsilon$;
- $overline(x)_n -> overline(x)_0 <==> overline(x)_n - overline(x)_0 = o(1)$;
- $overline(x)_n$ --- фунд. $<==> forall epsilon > 0$ $exists n_epsilon in NN$ $forall n >= n_epsilon$ $forall k >= n_epsilon$ $abs(overline(x)_n - overline(x)_k) < epsilon$;
*Т.*:
Послед. $(overline(x)_n)$ огр. или беск. мал., или фунд. $<==>$ все её коорд. послед. $(x_(i n))^(infinity)_(n=1)$, $i = 1, dots, m$
огр. или беск. мал., или фунд. сооотв.\ 
*Т.*:
$overline(x)_n -> overline(x)_0 <==>$ $forall i = 1, dots, m$ $x_(i m) -> x_(i 0)$.\
*Т.*:
$overline(x)_n -> overline(x)_0$, $overline(y)_n -> overline(y)_0$, $alpha_n -> alpha_0$ (в $RR$) $=>$
$overline(x)_n + overline(y)_n -> overline(x)_0 + overline(y)_0$, $alpha_n overline(x)_n -> alpha_0 overline(x)_0$,
$overline(x)_n dot overline(y)_n -> overline(x)_0 dot overline(y)_0$, $abs(overline(x)_n) -> abs(overline(x)_0)$.\
*Т.*:
Всякая сх. послед. огр.\
*Т.*:
Любая подпослед. сх. послед. сх., причём к той же т.\
*Т. (крит. Коши)*:
Послед. сх. $<==>$ послед. фунд.\
*Т. (Больц.-В-сса)*:
У любой огр. послед. сущ. сход. подпослед.\
