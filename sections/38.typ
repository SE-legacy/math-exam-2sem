#import "../conf.typ": definition, theorem, block_base

#definition()[
  Пусть вектор $overline(a) in RR^m, #h(6pt) abs(overline(a)) = 1$ и прямая $l$ проходит через точку $overline(x)_0$ параллелельно вектору $overline(a)$. Параметрическое представление прямой $l$ имеет вид
  
  $ overline(x) = overline(x)_0 + t overline(a), #h(6pt) t in RR. $
  
  Рассмотрим функцию $F(t) = f(overline(x)_0 + t overline(a))$. Она определена для любого $t$ такого что, что точка $overline(x)_0 + t overline(a)$ принадлежит области определения $f$.

  Если существует производная $F'(0)$, то ее называют производной функции $f$ в точке $overline(x)_0$ по направлению вектора $overline(a)$ и обозначается символом $(diff f )/(diff overline(a))(overline(x)_0)$.

  $ (diff f)/(diff overline(a))(overline(x)_0) = lim_(t -> 0) (F(t) - F(0))/t = lim_(t -> 0) (f(overline(x)_0 + t overline(a)) - f(overline(x)_0))/t. $
]

#theorem()[
  Если функция $f$ дифференцируема в точке $overline(x)_0$, то для любого единичного вектора $overline(a) = (a_1, dots, a_m)$ существует производная фукнции $f$ в точке $overline(x)_0$ по напрвлению вектора $overline(a)$, и 

  $ (diff f)/(diff overline(a))(overline(x)_0) = (diff f)/(diff x_1)(overline(x)_0) a_1 + (diff f)/(diff x_2)(overline(x)_0) a_2 + dots + (diff f)/(diff x_m)(overline(x)_0) a_m. $
][
  По теореме о дифференцируемости сложной функции

  $ F' (t) = (diff f)/(diff x_1)(overline(x)_0 + t overline(a)) a_1 + (diff f)/(diff x_2)(overline(x)_0 + t overline(a)) a_2 + dots + (diff f)/(diff x_m)(overline(x)_0 + t overline(a) ) a_m ==> \
  F'(0) = (diff f)/(diff overline(a))(overline(x)_0) = (diff f)/(diff x_1)(overline(x)_0) a_1 + (diff f)/(diff x_2)(overline(x)_0) a_2 + dots + (diff f)/(diff x_m)(overline(x)_0) a_m. $
]

#definition()[
  Пусть функция $f$ дифференцируема в точке $overline(x)_0$. Градиентом функции $f$ в точке $overline(x)_0$ называют вектор

  $ "grad" f(overline(x)_0) = ((diff f) / (diff x_1)(overline(x)_0), (diff f) / (diff x_2)(overline(x)_0),..., (diff f) / (diff x_m)(overline(x)_0)). $
]

#block_base("Замечание", true, [
  $ (diff f)/(diff overline(a))(overline(x)_0) = "grad" f(overline(x)_0) dot overline(a), $

  и при $m = 2,3$

  $ (diff f)/(diff overline(a))(overline(x)_0) = "grad" f(overline(x)_0)  dot overline(a) = abs("grad" f(overline(x)_0)) dot abs(overline(a)) dot cos phi = abs("grad" f(overline(x)_0)) dot cos phi, $

  где $phi$ --- угол между векторами $"grad" f(overline(x)_0)$ и $overline(a)$.
])

#block_base("Свойства вектора градиента", true, [
  + Вектор градиент указывает направление, по которому функция имеет максимальную производную в точке $overline(x)_0$.

  + Значение производной функции $f$ по направлению, определенному градиентом этой функции в точке $overline(x)_0$, равно длине вектора градиента $abs("grad" f(overline(x)_0))$.
])
