= №43. Дифференцируемые вектор-функции, матрица Якоби и якобиан.

*Опр.* Вектор-функцию $overline(f) = (f_1, ..., f_n) : RR^m → RR^n$ назовем дифф. в т. $overline(x)_0$, если все функ. $f_k$, $k = 1, ..., n$, дифф. в т. $overline(x)_0$.
Вектор-столбец $d overline(f)(overline(x)_0) = mat(d f_1(overline(x)_0); dots.v; d f_ n (overline(x)_0))$ - дифф. $overline(f)$. \
Матрица $D overline(f)(overline(x)_0) = mat(
      (diff f_1(overline(x)_0))/(diff x_1), dots.h, (diff f_1(overline(x)_0))/(diff x_m);
      dots.v, dots.v;
      (diff f_n(overline(x)_0))/(diff x_1), dots.h, (diff f_n(overline(x)_0))/(diff x_m)
    )$ - матр. Якоби отображения $overline(f)$.
Введем вектор-столбец $d overline(x) = mat(
      d x_1; 
      dots.v; 
      d x_m
    )$
Тогда можно записать $d overline(f)(overline(x)_0) = D overline(f)(overline(x)_0) d overline(x).$
Если $n = m$, то опред. матр. Якоби наз. якобианом и обозначают через $D(f_1, ..., f_m)/D(x_1, ..., x_m) (overline(x)_0).$

*Опр.* Матрица Якоби наз. произ. отоб. $overline(f)$ в т. $overline(x)_0$ и обозн. через $overline(f)'(overline(x)_0)$.

