= №7. Дифференцируемость интеграла по верхнему пределу инт-я. Формула Ньютона-Лейбница.

*Т. (о дифф-сти инт-а по верх. пределу инт-я):* $f in Re[a, b]$ и непр. в т. $x_(0) in [a, b] ==> F(x) = integral_(a)^(x) f(t) d t$ дифф. в т. $x_(0)$ и $F'(x_(0)) = f(x_(0))$.\
*Док-во:* По св-ву инт-а $(F(x_(0) + h) - F(x_(0))) / h = 1/h integral_(x_(0))^(x_(0) + h) f(t) d t = 1/h integral_(x_(0))^(x_(0) + h) (f(x_(0)) + (f(t) - f(x_(0)))) d t = 1/h integral_(x_(0))^(x_(0) + h) f(x_(0)) d t + 1/h integral_(x_(0))^(x_(0) + h) (f(t) - f(x_(0))) d t = f(x_(0)) + 1/h integral_(x_(0))^(x_(0) + h) (f(t) - f(x_(0))) d t$. Пусть $epsilon > 0$. $f$ непр. в т. $x_(0) ==> exists delta > 0$ такое, что $forall t in [a, b]: |t - x_(0)| < delta$ вып. усл. $|f(t) - f(x_(0))| < epsilon$. Тогда, если $|h| < delta$, то $abs(1/h integral_(x_(0))^(x_(0) + h) (f(t) - f(x_(0))) d t) <= 1/abs(h) dot abs(h) dot epsilon = epsilon ==> lim_(h -> 0) 1/h integral_(x_(0))^(x_(0)+h) (f(t) - f(x_(0))) d t = 0 ==>$ существует предел $lim_(h -> 0) (F(x_(0) + h) - F(x_(0))) / h = f(x_(0))$, т.е. $F'(x_(0)) = f(x_(0))$.\
*След-е:* $f$ непр. на $[a, b]$ $==>$ $f$ имеет первообразную на $[a, b]$.

*Т. (ф-ла Ньютона-Лейбница):* $f$ непр. на $[a, b] ==> integral_(a)^(b) f(x) d x = Phi(b) - Phi(a)$, где $Phi$ - произвольн. первообразная $f$.\ 
*Док-во:* По пред. Т. $Phi$ имеет вид $Phi(x) = integral_(a)^(x) f(t) d t + C$, где $C = "const"$. Пусть сначала $x = a$, а потом $x = b$. Тогда $Phi(a) = integral_(a)^(a) f(t) d t + C = 0 + C = C$, $Phi(b) = integral_(a)^(b) f(t) d t + C ==> integral_(a)^(b) f(x) d x = Phi(b) - Phi(a)$.\
*Замеч-е:* Ф-лу Н-Л часто записывают $integral_(a)^(b) f(x) d x = Phi(x)|_(a)^(b)$, где $Phi(x)|_(a)^(b) = Phi(b) - Phi(a)$.
