#import "../conf.typ": definition, theorem

#definition()[
  Числовой ряд $sum a_n$ --- это последовательность $(S_n)$, $S_n = limits(sum)_(k = 1)^n a_k, n in NN$
  
  $a_n$ --- $n$–ый член ряда, $S_n$ --- $n$–ая частичная сумма ряда.
]

#definition()[
  Если в $overline(RR)$ существует предел $limits(lim)_(n -> infinity) S_n = S$, то $S in overline(RR)$ называют суммой ряда и обозначают 

  $ S = sum_(n = 1)^infinity a_n. $

  Если $S$ конечное, то ряд называют сходящимся. Если $S = plus.minus infinity$, или $limits(lim)_(n -> infinity) S_n$ не существует то ряд называют расходящимся.
]

#theorem(
  name: "Теорема (необходимое условие сходимости ряда)",
  breakline: true
)[ 
  Ряд $sum a_n$ сходится. Тогда $limits(lim)_(n -> infinity) a_n = 0$, т.е. $a_n = overline(o)(1)$.
][
  Пусть ряд $sum a_n$ сходится и его сумма $S in RR$. Тогда 
  
  $ lim_(n -> infinity) a_n = lim_(n -> infinity) (S_n - S_(n - 1)) = S - S = 0. $
]

#definition()[
  Ряд $sum a_n$ удовлетворяет условию Коши, если 
  
  $ forall epsilon > 0 #h(6pt) exists n_epsilon in NN #h(6pt) forall n >= n_epsilon #h(6pt) forall p in NN #h(6pt) abs(sum_(k = n + 1)^(n + p) a_k) < epsilon. $
]


#theorem(
  name: "Теорема (критерия Коши сходимости числового ряда)",
  breakline: true 
)[ 
  Ряд $sum a_n$ сходится $<==>$ ряд $sum a_n$ удовлетворяет условию Коши.
][
  Используя критерий Коши сходимости последовательности: $sum a_n$ сходится по определению, когда $(S_n)$ сходится, т.е тогда и только тогда, когда $(S_n)$ фундаментальна, т.е. 

  $ forall epsilon > 0 #h(6pt) exists n_epsilon in NN #h(6pt) forall n >= n_epsilon #h(6pt) forall p in NN #h(6pt) abs(S_(n + p) - S_n) < epsilon. $

  При этом 

  $ S_(n + p) - S_n = sum_(k = 1)^(n + p) a_k - sum_(k = 1)^n a_k = sum_(k = n + 1)^(n + p) a_k. $
]
