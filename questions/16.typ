= №29. Прост. $RR^m$. Послед. в $RR^m$ и их св-ва

*Опр.*: Пусть число $m in NN$. Множ. упорядоченных наборов $(x_1, x_2, dots, x_m)$, где $x_i in RR$, $i = 1, dots, m$, называют
пространством $RR^m$.\
*Опр.*: Будем обозначать $overline(x) = (x_1, x_2, dots, x_m)$ и называть точкой или вектором.\
*Опр.*: Отображение множ. $NN$ в множ. $RR^m$ называем послед. и обозначаем $(overline(x)_n)$ или $(overline(x)_n)_(n=1)^(infinity)$, где
$overline(x)_n = (x_(1 n), dots, x_(m n))$.\
*Опр.*:
- $overline(x)_n = O(1) <=> exists M > 0$ $forall n in NN$ $abs(overline(x)_n) <= M$;
- $overline(x)_n = o(1) <=> forall epsilon > 0$ $exists n_epsilon in NN$ $forall n >= n_epsilon$ $overline(x)_n < epsilon$;
- $overline(x)_n -> overline(x)_0 <=> overline(x)_n - overline(x)_0 = o(1)$;
- $overline(x)_n$ --- фунд. $<=> forall epsilon > 0$ $exists n_epsilon in NN$ $forall n >= n_epsilon$ $forall k >= n_epsilon$ $abs(overline(x)_n - overline(x)_k) < epsilon$;
*Т.*:
Послед. $(overline(x)_n)$ огр. или беск. мал., или фунд. $<=>$ все её коорд. послед. $(x_(i n))^(infinity)_(n=1)$, $i = 1, dots, m$
огр. или беск. мал., или фунд. сооотв.\ 
*Т.*:
$overline(x)_n -> overline(x)_0 <=>$ $forall i = 1, dots, m$ $x_(i m) -> x_(i 0)$.\
*Т.*:
$overline(x)_n -> overline(x)_0$, $overline(y)_n -> overline(y)_0$, $alpha_n -> alpha_0$ (в $RR$) $=>$
$overline(x)_n + overline(y)_n -> overline(x)_0 + overline(y)_0$, $alpha_n overline(x)_n -> alpha_0 overline(x)_0$,
$overline(x)_n dot overline(y)_n -> overline(x)_0 dot overline(y)_0$, $abs(overline(x)_n) -> abs(overline(x)_0)$.\
*Т.*:
Всякая сх. послед. огр.\
*Т.*:
Любая подпослед. сх. послед. сх., причём к той же т.\
*Т. (крит. Коши)*:
Послед. сх. $<=>$ послед. фунд.\
*Т. (Больц.-В-сса)*:
У любой огр. послед. сущ. сход. подпослед.\
