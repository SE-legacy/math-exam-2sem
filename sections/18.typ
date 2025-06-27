#import "../conf.typ": theorem

#theorem(
  name: "Теорема (преобразование Абеля)",
  breakline: true
)[
  Пусть $n >= 1, #h(6pt) B_n = limits(sum)^n_(k=1) b_k$. Тогда
  
  $ sum^n_(k=1) a_k b_k = a_n B_n - sum^(n-1)_(k=1)(a_(k+1) - a_k) B_k. $
][
  $b_1 = B_1, quad b_2 = B_2 - B_1, quad dots, quad B_n = B_n - B_(n-1)$

  $ sum^n_(k=1) a_k b_k = a_1 B_1 + a_2 (B_2 - B_1)+dots+a_n (B_n - B_(n-1)) = \
  = B_1 (a_1 - a_2) + dots + B_(n-1) (a_(n-1) - a_n) + B_n a_n = \
  = sum^(n-1)_(k=1) (a_k - a_(k+1)) B_k + B_n a_n. $
]

#theorem(
  name: "Теорема (о равносходимости рядов, связанных преобразованием Абеля)",
  breakline: true
)[
  $B_n = limits(sum)^n_(k=1) b_k, #h(6pt) (a_n B_n)$ сх-ся $==> sum a_n B_n$ и $sum B_n (a_(n+1) - a_n)$ ведут себя одинаково.
][]

#theorem(name: "Теорема (признак Дирихле)")[
  Последовательность $(a_n)$ монотонна и бесконечно малая; $B_n = limits(sum)^n_(k=1) b_k = O(1)$. Тогда ряд $sum a_n b_n$ сх-ся.
][
  $a_n B_n = o(1) O(1) = o(1)$. Тогда по предыдущей теореме ряды $sum a_n B_n$ и $sum B_n (a_(n+1) - a_n)$ ведут себя одинаково. 

  Пусть $abs(B_k) <= M, #h(6pt) k>=1. #h(6pt) epsilon > 0$ --- произвольное число. 
  
  Т.к. $a_n = o(1)$, то $exists n_0 in NN #h(6pt) forall n>= n_0 #h(6pt) abs(a_n) < epsilon$. При $n >= n$

  $ abs(sum^(n+p)_(k=n+1) (a_(k+1) - a_k)B_k) <= sum^(n+p)_(k=n+1) abs((a_(k+1) - a_k)) abs(B_k) <= M sum^(n+p)_(k=n+1) abs((a_(k+1) - a_k)). $

  Т.к. $(a_n)$ монотонна, то
  
  $ sum^(n+p)_(k=n+1) abs(a_(k+1) - a_k) = abs(sum^(n+p)_(k=n+1) a_(k+1) - a_k) = abs(a_(n+p+1) - a_(n+1)) <= abs(a_(n+p+1)) + abs(a_(n+1)) < 2 epsilon ==> \
  forall n>= n_0 #h(6pt) forall p>=1 #h(6pt) abs(sum^(n+p)_(k=n+1) (a_(k+1) - a_k)B_k) < 2 M epsilon $
  
  Тогд по критерию Коши ряд $sum B_n (a_(n+1) - a_n)$ сходится.
]

#theorem(name: "Теорема (признак Абеля)")[
  Последовательность $(a_n)$ монотонна и ограничена; ряд $sum b_n$ сходится. Тогда ряд $sum a_n b_n$ сходится.
][
  Пусть $abs(a_k) <= M, #h(6pt) k>=1$ и

  $ B^n_p = sum^(n+p)_(k=n+1) b_k $

  По критерию Коши $forall epsilon > 0 #h(6pt) exists n_0 in NN #h(6pt) forall n>= n_0 #h(6pt) forall p in NN #h(6pt) abs(B^n_p) < epsilon$. По преобразованию Абеля

  $ sum^(n+p)_(k=n+1) a_k b_k = a_(n+p) B^n_p - sum^(n+p)_(k=n+1) (a_(k+1) - a_k) B^n_p. $

  При $n >= n_0$

  $ abs(sum^(n+p)_(k=n+1) a_k b_k) = abs(a_(n+p)) abs(B^n_p) - sum^(n+p)_(k=n+1) abs((a_(k+1) - a_k)) abs(B^n_p) < M epsilon + epsilon sum^(n+p-1)_(k=n+1) abs(a_(k+1) - a_k). $

  Т.к. $a_n$ монотонна и ограничена, то 
  $ abs(sum^(n+p)_(k=n+1) a_k b_k) < M epsilon + epsilon 2 M = 3 M epsilon. $ 
  
  Тогда по критерию Коши ряд $sum a_n b_n$ сходится.
]

#theorem(name: "Теорема (признак Лейбница)")[
  Последовательность $(a_n)$ монотонна и бесконечно малая, тогда ряд $sum (-1)^(n-1) a_n$ сходится.
][
  Из признака Дирихле при $b_n = (-1)^(n-1)$.
]
