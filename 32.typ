// Дифференцирование вектор-функций. Свойства операции дифференцирования. Локальная формула Тейлора и неравенство Лагранжа
#heading(level: 1)[32]

Пусть функ. $overline(f) : RR -> RR^k$, $k > 1$, и т. $t_0$ --- внутр. точка обл. опред. функ. $overline(f)$
Функ. $overline(f)$ называется дифф-ой в т. $t_0$, если существует непр. в т. $t_0$ функ. $overline(A)$ такая, что 
$overline(f) (t) - overline(f) (t_0) = overline(A) (t) dot (t - t_0)$

*Т.*: Функ. $overline(f) = (f_1, dots, f_k)$ дифф. в т. $overline(t)_0$ $<=>$ все её коорд. функ. $f_1, dots, f_k$ дифф. в т. $t_0$, причём
$overline(f)^(prime) (t_0) = (f_1^(prime) (t_0), dots, f_k^(prime) (t_0))$

Следствия:

Если функ. $overline(f)$ и $overline(g)$ дифф. в т. $overline(x)_0$, то их сумма, разность, произв. на число и скал. произв. дифф. в т. $overline(x)_0$, причём:
$(overline(f) plus.minus overline(g))^(prime) (x_0) = (overline(f)^(prime) (x_0) plus.minus overline(g)^(prime) (x_0))$;
$(overline(lambda f)^(prime)) (x_0) = lambda overline(f)^prime (x_0)$, $lambda in RR$;
$(overline(f) dot overline(g))^(prime) (x_0) = overline(f)^(prime) (x_0) dot overline(g) (x_0) + overline(f) (x_0) dot overline(g)^(prime) (x_0)$

Если функ. $overline(f)$ дифф. в $t_0$, а скалярная функ. $g$ дифф. в т. $u_0$ и $g(u_0) = t_0$, то $overline(f) compose g$ дифф.
в т. $u_0$ и $(overline(f) compose g)^(prime) (u_0) = overline(f)^(prime) (t_0) dot g^(prime) (u_0)$

*Т. (лок. формула Тейлора)*: Пусть функ. $overline(f)$ $n$-дифф. в т. $overline(t)_0$, тогда
$overline(f) (t) = limits(sum)_(m=1)^n (overline(f)^(m) (t_0))/m! (t-t_0)^m + overline(epsilon) (t) (t-t_0)^n$,
где $overline(epsilon) (t) -> overline(0)$ при $t -> t_0$

*Т. (нер-во Лагранжа)*:
Пусть функ. $overline(f)$ непр. на отр. $[a, b]$ и дифф. на инт. $(a, b)$. Тогда $exists xi in (a,b):$ 
$abs(overline(f) (b) - overline(f) (a)) <= abs(overline(f)^(prime) (xi))(b-a)$

*Док-во*: 
Если $overline(f) (a) = overline(f) (b)$, нер-во очевидно. 
Пусть $overline(f) (a) != overline(f) (b)$ и $overline(e) = (overline(f) (b) - overline(f) (a))/abs(overline(f) (b) - overline(f) (a))$.
Тогда $abs(overline(e)) = 1$ и $abs(overline(f) (b) - overline(f) (a)) = (overline(f) (b) - overline(f) (a), overline(e)) = (overline(f) (b), overline(e)) - (overline(f) (a), overline(e))$.
Введём скалярную функ. $g(t) = (overline(f) (t), overline(e))$. Для неё вып. усл. т. Лагранжа, значит $exists xi in (a, b):$ 
$g(b) - g(a) = g^prime (xi)(b-a) = (overline(f)^prime (xi), overline(e))(b-a) <= abs(overline(f)^prime (xi))(b-a)$
