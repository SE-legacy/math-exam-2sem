#import "../conf.typ": definition

#definition(breakline: true)[
  Пусть $f$ дифференцируема в точке $overline(x)_0$. Определим функцию $d f(overline(x)_0): RR^m -> RR$, называемую дифференциалом функции $f$ в точке $overline(x)_0$:
  $ forall overline(h) in RR^m quad d f(overline(x)_0) (overline(h)) = sum^m_(k=1) (diff f)/(diff x_k) (overline(x)_0) h_k. $

  Если $phi(overline(x)_0) = x_k$, то обозначим её дифференциал как $d x_k$, тогда $d x_k (overline(h)) = h_k$,

  $ d f(overline(x)_0) = sum^m_(k=1) (diff f)/(diff x_k) d x_k. $
]

#definition(breakline: true)[
  Пусть $f$ 2-дифференцируема в точке $overline(x)_0$. $forall overline(h) in RR^m$ определим в $O(overline(x)_0)$ функцию $d_overline(h): RR^m -> RR$, 
  $ forall overline(x) in O(overline(x)_0) quad d_overline(h)f(overline(x)) = d f(overline(x))(overline(h)) $

  дифференциалом 2-го порядка функции $f$ в точке $overline(x)_0$ называется функция $d^2f(overline(x)_0): RR^m -> RR$ такая, что 
  $ forall overline(h) in RR quad d^2f(overline(x)_0)(overline(h)) = d(d_overline(h)f)(overline(x)_0)(overline(h)). $ 
]

#definition(breakline: true)[
  Пусть $f$ $n$-дифференцируема в точке $overline(x)_0$. Её $n$-дифференциалом в этой точке называется функция $d^n f(overline(x)_0): RR^m -> RR$ такая, что 
  $ forall overline(h) in RR^m quad d^n f(overline(x)_0)(overline(h)) = d(d^(n-1)_overline(h) f)(overline(x)_0)(overline(h)) $
]

По индукции можно установить:

$ d^n f(overline(x)_0)(overline(h)) = sum^m_(i_1, dots, i_n = 1) (diff^n f)/(diff x_i_1 dots diff x_i_n)(overline(x)_0) h_i_1 dots h_i_n. $

$ d^n f(overline(x)_0) = sum^m_(i_1, dots, i_n = 1) (diff^n f)/(diff x_i_1 dots diff x_i_n)(overline(x)_0) d x_i_1 dots d x_i_n. $

В силу независимости смешанных производных от порядка дифференцирования, приведем к виду:

$ d^n f(overline(x)_0)(overline(h)) = sum_(alpha_1 + dots + alpha_m = n) (n!)/(alpha_1 ! dots alpha_m !) (diff^n f)/(diff x_1^alpha_1 dots diff x_1^alpha_m)(overline(x)_0) h_1^alpha_1 dots h_1^alpha_m. $

$ d^n f(overline(x)_0) = sum_(alpha_1 + dots + alpha_m = n) (n!)/(alpha_1 ! dots alpha_m !) (diff^n f)/(diff x_1^alpha_1 dots diff x_1^alpha_m)(overline(x)_0) d x_1^alpha_1 dots d x_1^alpha_m. $

Что символически можно записать:

$ d^n f(overline(x)_0) = (d x_1 diff/(diff x_1) + dots + d x_m diff/(diff x_m))^n f(overline(x)_0). $