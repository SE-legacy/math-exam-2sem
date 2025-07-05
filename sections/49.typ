#import "../conf.typ": definition, theorem

#definition()[
  Пусть $L = L_overline(gamma)$ --- гладкая кривая, функции $f(x,y)$, $P(x,y)$, $Q(x,y)$ определены на $L$. Пусть $a = t_0 < t_1 < dots < t_n = b$ --- разбиение отрезка $[a,b]$.
  
  $M_k = (x_k, y_k) = lr((gamma_1(t_k), gamma_2(t_k)), size: #125%), #h(6pt) k = 0, dots, n$. На каждой дуге $M_(k-1) M_k$ выберем произвольную точку $(xi_k, eta_k)$. Длину дуги $M_(k-1) M_k$ обозначим, как
  
  $ Delta s_k = limits(integral)_(t_(k-1))^(t_k) abs(overline(gamma)'(t)) d t = limits(integral)_(t_(k-1))^(t_k) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t, $
  
  и диаметром разбиения кривой $L$ назовем $Delta = limits(max)_(1 <= k <= n) Delta s_k$.
  
  $Delta x_k = x_k - x_(k-1), #h(6pt) Delta y_k = y_k - y_(k-1)$. Определим интегральные суммы
  
  $ sigma_1 = sum_(k=1)^n f(xi_k, eta_k) Delta s_k, quad sigma_2 = sum_(k=1)^n P(xi_k, eta_k) Delta x_k, quad sigma_3 = sum_(k=1)^n Q(xi_k, eta_k) Delta y_k. $
]

#definition()[
  Назовем $I_m in RR$ пределом интегральных сумм $sigma_m$ при $Delta -> 0$ $(m = 1, 2, 3)$, если
  
  $ forall epsilon #h(6pt) exists delta > 0 #h(6pt) forall T #h(6pt) forall {(xi_k, eta_k)} #h(6pt) (Delta < delta => abs(sigma_m - I_m) < epsilon). $

  $I_1 in RR$ называют криволинейным интегралом первого рода от функции $f$ по кривой $L$, и обозначают, как

  $ limits(integral)_L f(x,y) d s. $
  
  $I_2 in RR$ называют криволинейным интегралом второго рода от функции $P$ по кривой $L$ (в направлении от $A$ до $B$) и обознают, как
  
  $ limits(integral)_L P(x,y) d x, $ 
  
  аналогично,

  $ I_3 = limits(integral)_L Q(x,y) d y. $
  
  Cумму
  
  $ limits(integral)_L P(x,y) d x + limits(integral)_L Q(x,y) d y $

  называют общим криволинейным интегралом второго рода, и обозначают
  
  $ limits(integral)_L P(x,y) d x + Q(x,y) d y. $
]

#theorem(name: "Теорема (условия существования криволинейных интегралов )")[
  Если $L = L_overline(gamma)$ --- гладкая кривая, фукнции $f$, $P$, $Q$ непрерывны вдоль этой кривой, то все три криволиненых интеграла существуют, и
  
  $ limits(integral)_L f(x,y) d s = limits(integral)_a^b f lr((gamma_1(t),gamma_2(t)), size: #125%) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t, \
  limits(integral)_L P(x,y) d x = limits(integral)_a^b P lr((gamma_1(t),gamma_2(t)), size: #125%) gamma'_1(t) d t, \
  limits(integral)_L Q(x,y) d y = limits(integral)_a^b Q lr((gamma_1(t),gamma_2(t)), size: #125%) gamma'_2(t) d t. $
][
  Определенные интегралы, стоящие в правых частях формул существуют, т.к. их подинтегральные функции непрерывны на отрезке $[a,b]$. 
  
  Докажем первое равенство. Обозначим 
  
  $ I_1 = limits(integral)_a^b f lr((gamma_1(t),gamma_2(t)), size: #125%) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t $
  
  и оценим разность 
  
  $ sigma_1 - I_1 = sum_(k=1)^n f(xi_k,eta_k) Delta l_k - limits(integral)_a^b f lr((gamma_1(t),gamma_2(t)), size: #125%) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t = \
  = sum_(k=1)^n limits(integral)_(t_(k-1))^(t_k) lr((f  lr((gamma_1(tau_k), gamma_2(tau_k)), size: #125%)), size: #150%) - f lr((gamma_1(t),gamma_2(t)), size: #125%) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t. $
  
  Т.к. функции $gamma'_1(t)$ и $gamma'_2(t)$ непрерывны на $[a,b]$ и одновременно не обращаются в нуль, то 
  
  $ m = limits(min)_(a <= t <= b) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) > 0, quad Delta s_k >= m limits(integral)_(t_(k-1))^(t_k) d t = m Delta t_k ==> \ 
  Delta t_k <= 1/m Delta s_k, $
  
  и при $Delta -> 0$ стремится к нулю и наибольшая из разностей $Delta t_k = t_k - t_(k-1)$. 
  
  Т.к. функция $f lr((gamma_1(t), gamma_2(t)), size: #125%)$ равномерно непрерывна на $[a, b]$, то 
  
  $ forall epsilon > 0 #h(6pt) exists delta > 0 #h(6pt) Delta < delta #h(6pt) abs(f lr((gamma_1(tau_k), gamma_2(tau_k)), size: #125%) - f lr((gamma_1(t), gamma_2(t)), size: #125%)) < epsilon/S, $
  
  где $S$ --- длина кривой $L$. Тогда 
  
  $ abs(sigma_1 - I_1) <= epsilon/S sum_(k=1)^n limits(integral)_(t_(k-1))^(t_k) sqrt(lr((gamma'_1(t)), size: #125%)^2 + lr((gamma'_2(t)), size: #125%)^2) d t = epsilon/S sum_(k=1)^n Delta s_k = epsilon. $
  
  Таким образом, $sigma_1 -> I_1$ при $Delta -> 0$, т.e. мы доказали первое равенство.
  
  Для доказательства второго равенства оценим разность 
  
  $ sigma_2 - I_2 = sum_(k=1)^n limits(integral)_(t_(k-1))^(t_k) lr((P lr((gamma_1(tau_k), gamma_2(tau_k)), size: #125%) - P lr((gamma_1(t), gamma_2(t)), size: #125%)), size: #150%) gamma'_1(t) d t. $

  Для любого $epsilon > 0$ найдется $delta > 0$ такое, что при $Delta < delta$
  
  $ abs(P lr((gamma_1(tau_k), gamma_2(tau_k)), size: #150%) - P lr((gamma_1(t), gamma_2(t)), size: #150%)) < epsilon/(M(b-a)), $
  
  где $M = limits(max)_(a <= t <= b) abs(gamma'_1(t))$. Тогда 
  
  $ abs(sigma_2 - I_2) <= epsilon/(M(b-a)) limits(sum)_(k=1)^n limits(integral)_(t_(k-1))^(t_k) abs(gamma'_1(t)) d t <= epsilon/(M(b-a)) M limits(sum)_(k=1)^n Delta t_k = epsilon. $
  
  Это означает, что $sigma_2 -> I_2$ при $Delta -> 0$, т.е. мы доказали второе равенство. Третье равенство доказывается аналогично.
]
