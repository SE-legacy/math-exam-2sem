= №39. Частные производные высшего порядка. Теорема о равенстве смешанных производных. Непрерывно дифференцируемые и k-непрерывно дифференцируемые функции.

*Опр.* Пусть част. произ. $(diff f )/(diff x_i)$ сущ. в нек. окр. т. $overline(x)_0$ и функ. $(diff f )/(diff x_i)$ имеет в $overline(x)_0$ част. произ. по перемен. $x_j$. Част. произ. второго порядка опр. равенством: $(diff^2 f)/(diff x_j diff x_i)(overline(x)_0) = (diff)/(diff x_j)((diff f)/(diff x_i))(overline(x)_0)$ \ $(diff^2 f)/(diff x_j diff x_i) = f^((2))_(x_i x_j)$ \

Если опр. ч. пр-ая $(diff^k f)/(diff x_i_1 dots diff x_i_k) (overline(x)_0)$ в нек. окр. $overline(x)_0$, то определим ч. пр-ую порядка $k+1$ в т. $overline(x)_0$: $(diff^(k+1) f)/(diff x_j diff x_i_1 dots diff x_i_k) (overline(x)_0) = diff/(diff x_j) ((diff^k f)/(diff x_i_1 dots diff x_i_k)) (overline(x)_0)$ 

*Т. (О равен. смеш. произ.)*: Пусть функ. $f$ имеет смеш. произ. $(diff^2 f)/(diff x_j diff x_i) и (diff^2 f)/(diff x_i diff x_j)$. Тогда $forall overline(x)_0$, где обе чатсн. произ. непр., их значения совпадают \
*Док-во*: Проведем док-во для функ. двух переменных. Пусть $(diff^2 f)/(diff x diff y) и (diff^2 f)/(diff y diff x)$ непр. в т. $(x_0, y_0)$. \
Введем $F(h) = f(x_0 + h, y_0 + h) - f(x_0 + h, y_0) - f(x_0, y_0 + h) + f(x_0, y_0), phi(t) = f(x_0 + t h, y_0 + h) - f(x_0 + t h, y_0)$.
$F(h) = phi(1) - phi(0)$, по т. Лагранжа $exists theta_1 in (0,1)$, что $phi(1) - phi(0) = phi'(theta_1)$. $phi'(theta_1) = f'_x (x_0 + theta_1 h, y_0 + h)h - f'_x (x_0 + theta_1 h, y_0)h$.\ Опять по т. Лагранжа $f^((2))_(x y) (x_0 + theta_1 h, y_0 + theta_2 h)h = f'_x (x_0 + theta_1 h, y_0 + h) - f'_x (x_0 + theta_1 h, y_0)$
Так, $F(h) = f^((2))_(x y)(x_0 + theta_1 h, y_0 + theta_2 h)h^2$. Если ввести функ. $psi(t) = f(x_0 + h, y_0 + t h) - f(x_0, y_0 + t h)$, то поступая аналогично $F(h) = f^((2))_(y x)(x_0 + theta'_1 h, y_0 + theta'_2 h)h^2. theta'_1, theta'_2 in (0,1)$ \
Тогда равенство $f^((2))_(y x)(x_0 + theta'_1 h, y_0 + theta'_2 h) = f^((2))_(x y) (x_0 + theta_1 h, y_0 + theta_2 h)$ переходя к пределу при $h -> 0$ в силу непр. обеих част. произ. в $(x_0, y_0)$, получаем $f^((2))_(y x) (x_0, y_0) = f^((2))_(x y) (x_0, y_0)$

*Опр.* Пусть $f$ опр. в нек. обл. $G$. Функ. k-непрерывно дифф, если все част. произ. до порядка k включительно опр. и непр. в обл. $G$
