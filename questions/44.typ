= №44. Неявные функции. Теорема о неявной функции (без док-ва)

*Опр.* Пусть даны функ. $F: RR^(m+1) -> RR$, мн. $X subset RR^m, Y subset RR$ и ур-ие $F(overline(x), y) = 0$.\ Если $forall overline(x) in X $ $exists! y = f(overline(x)) in Y$, что $F(overline(x), f(overline(x))) = 0$, то ур-ие выше на мн. $X times Y$ опр. неяв. функ. $f: X -> Y$

*Т. (О неявной функции)*: Если функ. $F$ опр. и окр. $U$ т. $(overline(x)_0, y_0)$ такова, что\
1) $F in C^((1)) (U)$, т.е. $F$ непр. дифф. на $U$; 2) $F(overline(x)_0, y_0) = 0$; 3) $F'_y (overline(x)_0, y_0) != 0$; то $exists O(overline(x)_0), O(y_0)$ такие, что на мн. $O(overline(x)_0) times O(y_0)$ ур-ие выше опр. непр. дифф. функ. $f: O(overline(x)_0) -> O(y_0)$. Причем $forall overline(x) in O(overline(x)_0), k = 1,..., m$: $f'_x_k (overline(x)) = - (F'_x_k (overline(x), f(overline(x))))/(F'_y (overline(x), f(overline(x))))$