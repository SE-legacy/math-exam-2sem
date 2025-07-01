#import "../conf.typ": definition, theorem

#definition()[
  Пусть $m in NN$. Множество упорядоченных наборов $(x_1, x_2, dots, x_m)$, где $x_i in RR$, $i = 1, dots, m$, называют пространством $RR^m$.

  Будем обозначать $overline(x) = (x_1, x_2, dots, x_m)$ и называть точкой или вектором.

  Пусть $overline(x) = (x_1, dots, x_m)$ и $overline(y) = (y_1, dots, y_m)$. Определим в $RR^m$ несколько операций:

  + #[
    Сложение. 
  
    $ overline(x) + overline(y) = (x_1 + y_1, dots, x_m + y_m). $
  ]

  + #[
    Умножение на скаляр. Если $lambda in RR$, то 
  
    $ lambda overline(x) = (lambda x_1, dots, lambda x_m). $

    Эти две операции коммутативны, ассоциативны и дистрибутивны.
  ]

  + #[
    Отношение равенства. Пусть $overline(0) = (0, dots, 0)$, тогда 
  
    $ overline(x) = overline(y) <==> overline(x) - overline(y) = overline(0). $
  ]

  + #[
    Скалярное произведение. 
  
    $ overline(x) dot overline(y) = x_1 y_1 + dots + x_m y_m. $
  ] 

  + #[
    Евклидова норма. 
    $ abs(overline(x)) = sqrt(x_1^2 + dots + x_m^2). $
  ]
]

#theorem(name: "Теорема (неравенство Коши-Буняковского-Шварца)")[
  $abs(overline(x) dot overline(y)) <= abs(overline(x)) dot abs(overline(y))$.
][
  Пусть

  $ A = sum_(i = 1)^m x_i^2, quad B = sum_(i = 1)^m y_i^2, quad C = sum_(i = 1)^m x_i y_i. $

  Если $B = 0$, то $y_i = 0, #h(6pt) i = 1, dots, m$ и нерав. принимает вид $0 <= 0$.

  Пусть $B > 0$. Тогда 
  
  $ 0 <= sum_(i = 1)^m (B x_i - C y_i)^2 = B^2 sum_(i = 1)^m x_i^2 - 2 B C sum_(i = 1)^m x_i y_i + C^2 sum_(i = 1)^m y_i^2 =\
  = B^2 A - 2 B C^2 + B C^2 = B^2 A - B C^2 = B(A B - C^2). \
  A B - C^2 >= 0 ==> C^2 <= A B ==> abs(C) <= sqrt(A) sqrt(B). $
]

#definition()[
  Отображение множетсва $NN$ во множество $RR^m$ называется последовательностью и обозначается $(overline(x)_n)$ или $(overline(x)_n)_(n=1)^(infinity)$, где
  $overline(x)_n = (x_(1 n), dots, x_(m n))$.
]

#definition()[
  - $overline(x)_n = O(1) <==> exists M > 0 #h(6pt) forall n in NN #h(6pt) abs(overline(x)_n) <= M$;

  - $overline(x)_n = o(1) <==> forall epsilon > 0 #h(6pt) exists n_epsilon in NN #h(6pt) forall n >= n_epsilon #h(6pt) abs(overline(x)_n) < epsilon$;

  - $overline(x)_n -> overline(x)_0 <==> overline(x)_n - overline(x)_0 = o(1)$;

  - $overline(x)_n$ --- фундаментальная $<==> forall epsilon > 0 #h(6pt) exists n_epsilon in NN #h(6pt) forall n >= n_epsilon #h(6pt) forall k >= n_epsilon #h(6pt) abs(overline(x)_n - overline(x)_k) < epsilon$.
]

#theorem()[
  Последовательность $(overline(x)_n)$ ограничена или бесконечна малая, или фундаментальная тогда и только тогда, когда все её координатные последовательности $(x_(i n))^(infinity)_(n=1), #h(6pt) i = 1, dots, m$ ограничены или бесконечно малые, или фундаментальные соответственно.
][]

#theorem()[
  $overline(x)_n -> overline(x)_0 <==> #h(6pt) forall i = 1, dots, m #h(6pt) x_(i n) -> x_(i 0)$.
][]

#theorem()[
  $ overline(x)_n -> overline(x)_0, #h(6pt) overline(y)_n -> overline(y)_0, #h(6pt) alpha_n -> alpha_0 #h(6pt) ("в" #h(6pt) RR) ==> \
  overline(x)_n + overline(y)_n -> overline(x)_0 + overline(y)_0, #h(6pt) alpha_n overline(x)_n -> alpha_0 overline(x)_0, #h(6pt) overline(x)_n dot overline(y)_n -> overline(x)_0 dot overline(y)_0, #h(6pt) abs(overline(x)_n) -> abs(overline(x)_0). $
][]

#theorem()[
  Всякая сходящаяся последовательность ограничена.
][]

#theorem()[
  Любая подпоследовательность сходящейся последовательности сходится, причём к той же точке.
][]

#theorem(name: "Теорема (критерий Коши)")[
  Последовательность сходится $<==>$ последовательность фундаментальная.
][]

#theorem(name: "Теорема (Больцано-Вейерштрасса)")[
  У любой ограниченной последовательности существует сходящаяся подпоследовательность.
][]
