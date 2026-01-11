#import "../conf.typ": definition, theorem

#definition()[
  Пусть частная произодная $(partial f )/(partial x_i)$ существует в некоторой окрестности точки $overline(x)_0$ и функция $(partial f )/(partial x_i)$ имеет в точке $overline(x)_0$ частную производную по переменной $x_j$. Частная произодная второго порядка определяется равенством

  $ (partial^2 f)/(partial x_j partial x_i)(overline(x)_0) = (partial)/(partial x_j)((partial f)/(partial x_i))(overline(x)_0), $

  и также обозначается символом $f^((2))_(x_i x_j)$.

  Если определена частная производная $(partial^k f)/(partial x_i_1 dots partial x_i_k) (overline(x)_0)$ в некоторой окрестности точки $overline(x)_0$, то определим частную производную порядка $k+1$ в точке $overline(x)_0$:

  $ (partial^(k+1) f)/(partial x_j partial x_i_1 dots partial x_i_k) (overline(x)_0) = partial/(partial x_j) ((partial^k f)/(partial x_i_1 dots partial x_i_k)) (overline(x)_0). $
]

#theorem(name: "Теорема (о равенстве смешанных производных)",)[
  Пусть функция $f$ имеет в области $G$ смешанные производные $(partial^2 f)/(partial x_j partial x_i) и (partial^2 f)/(partial x_i partial x_j)$. Тогда в любой точке $overline(x)_0$, где обе частные производные непрерывны, их значения совпадают.
][ 
  Проведем доказательство для функции двух переменных.
  
  Пусть $(partial^2 f)/(partial x partial y) и (partial^2 f)/(partial y partial x)$ непрерывны в точке $(x_0, y_0)$. Введем функции

  $ F(h) = f(x_0 + h, y_0 + h) - f(x_0 + h, y_0) - f(x_0, y_0 + h) + f(x_0, y_0), \
  phi(t) = f(x_0 + t h, y_0 + h) - f(x_0 + t h, y_0). $

  Тогда $F(h) = phi(1) - phi(0)$, по теореме Лагранжа найдем такое $theta_1 in (0,1)$, что 
  
  $ phi(1) - phi(0) = phi'(theta_1). \ 
  phi'(theta_1) = f'_x (x_0 + theta_1 h, y_0 + h)h - f'_x (x_0 + theta_1 h, y_0)h = \
  = lr((f'_x (x_0 + theta_1 h, y_0 + h) - f'_x (x_0 + theta_1 h, y_0)), size: #125%)h. $
  
  Применим снова теорему Лагранжа, $theta_2 in (0,1)$ 
  $ f'_x (x_0 + theta_1 h, y_0 + h) - f'_x (x_0 + theta_1 h, y_0) = f^((2))_(x y) (x_0 + theta_1 h, y_0 + theta_2 h)h. $

  Так, $F(h) = f^((2))_(x y)(x_0 + theta_1 h, y_0 + theta_2 h)h^2$. 
  
  Если ввести функцию 
  
  $ psi(t) = f(x_0 + h, y_0 + t h) - f(x_0, y_0 + t h), $
  
  то, поступая аналогично, 
  
  $ F(h) = f^((2))_(y x)(x_0 + theta'_1 h, y_0 + theta'_2 h)h^2, quad theta'_1, theta'_2 in (0,1). $

  Тогда 
  
  $ f^((2))_(y x)(x_0 + theta'_1 h, y_0 + theta'_2 h) = f^((2))_(x y) (x_0 + theta_1 h, y_0 + theta_2 h), $
  
  и, переходя к пределу при $h -> 0$, в силу непрывности обеих частных производных в $(x_0, y_0)$, получаем

  $ f^((2))_(y x) (x_0, y_0) = f^((2))_(x y) (x_0, y_0). $ 
]

#definition()[
  Пусть функция $f$ определена в некоторой области $G$. Функция $f$ называется $n$-непрерывно дифференцируемой, если все её частные производные до порядка n включительно определены и непрерывны в области $G$.

  $C^((n))(G)$ --- класс $n$-непрерывно дифференцируемых функций в области $G$.
]
