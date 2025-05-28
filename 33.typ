// Интегрирование вектор функций. Оценка модуля интеграла.

#heading(level: 1)[33]

Пусть вект.-функ. $overline(f) = (f_1, dots, f_k)$ опр. на отр. $[a, b]$. Функ. $overline(f)$ называется инт-мой на отр. $[a, b]$, если ее коорд. функ. $f_1, dots, f_k$ инт-мы 
на этом отрезке. При этом полагают $limits(integral)_a^b overline(f) (x) d x = (limits(integral)_a^b f_1 (x) d x, dots, limits(integral)_a^b f_k (x) d x)$

*Т.*: 
Пусть функ. $overline(f)$ инт-ма на отр. $[a, b]$. Тогда функ. $abs(overline(f))$ инт-ма и $abs(limits(integral)_a^b overline(f) (x) d x) <= limits(integral)_a^b abs(overline(f) (x)) d x$

*Док-во*:
Пусть $overline(y) = (y_1, dots, y_k)$, где $y_1 = limits(integral)_a^b f_1 (x) d x, dots, y_k = limits(integral)_a^b f_k (x) d x$.
Тогда $abs(overline(y))^2 = y_1^2 + dots + y_k^2 = y_1 limits(integral)_a^b f_1 (x) d x + dots + y_k limits(integral)_a^b f_k (x) d x = 
limits(integral)_a^b (y_1 f_1 (x) + dots + y_k f_k (x)) d x$.
В силу нер-ва Коши-Буянковского-Шварца $abs(y_1 f_1 (x) + dots + y_k f_k (x)) <= abs(overline(y)) dot abs(overline(f) (x))$
Поэтому $limits(integral)_a^b (y_1 f_1 (x) + dots + y_k f_k (x)) d x <= abs(overline(y)) limits(integral)_a^b abs(overline(f) (x)) d x$, т. е.
$abs(overline(y))^2 <= abs(overline(y)) limits(integral)_a^b abs(overline(f) (x)) d x$. Остальное очевидно
