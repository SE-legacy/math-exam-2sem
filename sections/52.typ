#import "../conf.typ": equ, theorem

#theorem()[
  Криволинейный интеграл в области $D$ не зависит от пути интегрирования тогда и только тогда, когда для любого кусочно гладкого контура $L$ в $D$ выполняется

  #equ($ limits(integral.cont)_L P(x,y) d x + Q(x,y) d y = 0. $, id: <eq:indep-from-the-path1>)
][]

Пусть криволинейный интеграл не зависит от пути интегрирования. Зафиксируем точку $A$ и рассмотрим интеграл от точки $A$ до произвольной точки $M(x, y)$

#equ(
  $ F(x,y) = limits(integral)_(A M) P d x + Q d y = limits(integral)^((x, y))_A P(x,y) d x + Q(x, y) d y. $,
  id: <eq:newton-leybnytz-line>,
)

Тогда для любой пары точек $(x_1, y_1), (x_2, y_2) in D$

$ limits(integral)^((x_2, y_2))_((x_1, y_1)) P(x,y) d x + Q(x, y) d y = F(x_2, y_2) - F(x_1, y_1). $

#theorem()[
  Если функции $P$ и $Q$ непрерывны в области $D$, и криволинейный интеграл не зависит от пути интегрирования, то функция $F$, определённая равенством $(#ref(<eq:newton-leybnytz-line>))$ имеет в $D$ непрерывные частные производные, причем

  #equ(
    $ (partial F(x,y)) / (partial x) = P(x, y), quad (partial F(x,y)) / (partial y) = Q(x, y), quad (x, y) in D. $,
    id: <eq:indep-from-the-path2>,
  )
][
  Взяв достаточо малое приращение $Delta x$, имеем

  $ F(x + Delta x, y) - F(x, y) = limits(integral)^((x + Delta x, y))_((x, y)) P(x,y) d x + Q(x, y) d y, $

  причем в качестве пути интегрирования берем горизонтальный отрезок, соединяющий точки $(x, y)$ и $(x + Delta x, y)$. По определению криволинейного интеграла второго рода

  $
    limits(integral)^((x + Delta x, y))_((x, y)) P(x,y) d x + Q(x, y) d y = limits(integral)^(x + Delta x)_x P(xi, y) d xi,
  $

  где последний интеграл является интегралом от функции $phi(xi) = P(xi, y)$, непрерывной в точке $xi = x$. По теореме о дифференцируемости интеграла от функции одной переменной по верхнему пределу интегрирования существует предел

  $ lim_(Delta x -> 0) (1/(Delta x) limits(integral)^(x + Delta x)_x P(xi, y) d xi) = phi(x) = P(x, y), $

  т.е. $(partial F(x,y)) / (partial x) = P(x, y)$. Второй равенство доказывается аналогично.
]

#theorem()[
  Пусть функции $P$ и $Q$ непрерывны вместе со своими частными производными в односвязной области $D$. Тогда следующие условия эквиваленты:

  + Выражение $P(x,y) d x + Q(x,y) d y$ является в области $D$ дифференциалом некоторой функции $F(x,y)$.
  + Всюду в области $D$ верно равенство

    $ (partial P(x,y)) / (partial y) = (partial Q(x,y)) / (partial x). $
  + Для любого кусочно гладкого контура $L$ в области $D$, верно равенство

    $ limits(integral.cont)_L P(x,y) d x + Q(x,y) d y = 0. $
  + Криволинейный интеграл второго рода от функции $P$ и $Q$ в области $D$ не зависит от пути интегрирования.
][
  $1 ==> 2$.

  $
    P(x,y) d x + Q(x,y) d y = d F(x,y) ==> \
    (partial F(x,y)) /( partial x) = P(x,y), quad (partial F(x,y)) / (partial y) = Q(x,y) ==> \
    (partial P(x,y)) / (partial y) = (partial^2 F(x,y)) / (partial y partial x), quad (partial Q(x,y)) / (partial x) = (partial^2 F(x,y)) / (partial x partial y).
  $

  В силу непрерывности частных производных правые части равны, значит равны и левые.

  $2 ==> 3$. Пусть $L$ --- произвольный кусочно гладкий контур в $D$. По формуле Грина

  $
    limits(integral.cont)_L P d x + Q d y = limits(integral.double)_D ((partial Q) / (partial x) - (partial P) / (partial y)) d x d y = 0,
  $

  так как подынтегральная функция тождественно равна нулю.

  $3 <==> 4$. Следует из теоремы, задающей равенство $(#ref(<eq:indep-from-the-path1>))$

  $4 ==> 1$. По теореме, задающей равенства $(#ref(<eq:indep-from-the-path2>))$, функция $F(x,y)$ имеет непрерывные частные производные

  $ (partial F(x,y)) / (partial x) = P(x,y), quad (partial F(x,y)) / (partial y) = Q(x,y). $

  Тогда эта функция дифференцируема, и

  $ d F(x,y) = P(x,y) d x + Q(x,y) d y. $
]
