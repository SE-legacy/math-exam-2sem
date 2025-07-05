#import "../conf.typ": theorem

Пусть 
$ G_(n,k) = sum^k_(i=1) g_(n+i), quad  G_n = sum^n_(k = 1) g_k. $

Тогда

$ G_(n,k) = G_(n+k) - G_n. $

И, используя преобразование Абеля, получим:

$ sum_(k = n + 1)^(n + p) f_k g_k = sum_(k=1)^(p-1) (f_(n+k) - f_(n+k+1)) G_(n,k) + f_(n+p) G_(n, p). $

#theorem(name: "Теорема (признак Дирихле равномерной сходимости)")[
  Пусть $forall x in X #h(6pt) f_n (x) arrow.b$, $norm(limits(sum)_(k = 1)^n g_k) = O(1)$, $norm(f_n) = o(1)$.
Тогда ряд $sum f_n g_n$ равномерно сходится.
][
  Пусть 
  $ G_n = sum_(k = 1)^n g_k, quad G_(n,k) = sum_(i = 1)^(k) g_(n+i). $

  Тогда $exists M #h(6pt) forall n in NN #h(6pt) norm(G_n) <= M$, и

  $ forall n in NN #h(6pt) forall k in NN #h(6pt) norm(G_(n,k)) = norm(G_(n+k) - G_n) <= norm(G_(n+k)) + norm(G_n) <= 2M ==> \
  forall x in X #h(6pt) abs(sum_(k = n + 1)^(n + p) f_k (x) g_k (x)) = abs(sum_(k=1)^(p-1) lr((f_(n+k) (x) - f_(n+k+1) (x)), size: #125%) G_(n,k) (x) + f_(n+p) (x) G_(n, p) (x)) <= \
  <= 2M sum_(k = 1)^(p-1) lr((f_(n+k) (x) - f_(n+k+1) (x)), size: #125%) + f_(n+p) (x) dot 2M = 2M f_(n+1) (x) <= 2M norm(f_(n+1)). $

  Пусть $epsilon > 0$. Тогда $exists n_epsilon #h(6pt) forall n >= n_epsilon #h(6pt) norm(f_n) < epsilon$, и

  $ forall n >= n_epsilon #h(6pt) forall p in NN #h(6pt) forall x in X #h(6pt) abs(sum_(k=n+1)^(n+p) f_k (x) g_k (x)) <= 2M norm(f_(n+1)) < 2M epsilon. $

  Ряд $sum f_n g_n$ равномерно сходится по критерию Коши.
]

#theorem(name: "Теорема (признак Абеля равномерной сходимости)")[
  Пусть $forall x in X #h(6pt) f_n (x) arrow.b$, ряд $sum g_n$ равномерно сходится и $norm(f_n) = O(1)$. Тогда ряд $sum f_n g_n$ равномерно сходится.
][
  Пусть 

  $ G_n = sum_(k = 1)^n g_k, quad G_(n,k) = sum_(i = 1)^(k) g_(n+i). $
  
  $exists M > 0 #h(6pt) forall n in NN #h(6pt) norm(f_n) <= M$
  
  Пусть $epsilon > 0$. Согласно критерию Коши равномерной сходимости функционольного ряда: 

  $ exists n_epsilon #h(6pt) forall n >= n_epsilon #h(6pt) forall k in NN #h(6pt) forall x in X #h(6pt) abs(G_(n,k (x))) = abs(G_(n+k) (x) - G_n (x)) < epsilon $

  Тогда $forall n >= n_epsilon #h(6pt) forall p in NN #h(6pt) forall x in X #h(6pt)$

  $ abs(sum_(k=n+1)^(n+p) f_k (x) g_k (x)) = abs(sum_(k=1)^(p-1) lr((f_(n+k) (x) - f_(n+k+1) (x)), size: #125%) G_(n,k) (x) + f_(n+p) (x) G_(n, p) (x)) <= \
  <= epsilon sum_(k=1)^(p-1) lr((f_(n+k) (x) - f_(n+k+1) (x)), size: #125%) + epsilon abs(f_(n+p) (x)) = lr((f_(n+1) (x) - f_(n+p) (x)), size: #125%) + epsilon abs(f_(n+p) (x)) <= \
  <= epsilon 2M + epsilon M = 3M epsilon. $ 
  
  Ряд $sum f_n g_n$ равномерно сходится по критерию Коши.
]
