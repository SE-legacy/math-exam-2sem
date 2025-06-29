#import "../conf.typ": definition, theorem, consequence

#definition()[
  $a_n = O(b_n) <==> exists C>0 #h(6pt) forall n in NN #h(6pt) abs(a_n) = C abs(b_n).$
]

#theorem(name: "Теорема (признак мажорации)")[
  $forall n in NN #h(6pt) a_n >= 0, #h(6pt) b_n >=0, #h(6pt) a_n = O(b_n), #h(6pt) limits(sum)^infinity_(n=1) b_n < + infinity ==> sum a_n < + infinity$.
][
  $exists C>0 #h(6pt) forall n in NN #h(6pt) 0<= a_n <= C b_n$. Тогда

  $ 0 <= sum^n_(k=1) a_k <= C sum^n_(k=1) b_k. $

  Переходя к пределу при $n -> infinity$,

  $ 0<= sum^infinity_(n=1) a_n <= C sum^infinity_(n=1) b_n < + infinity. $
]

#consequence(name: "Следствие 1")[
  $forall n in NN #h(6pt) a_n >= 0, #h(6pt) b_n >= 0, #h(6pt) (a_n/b_n)$ сх-ся, #h(6pt) $limits(sum)^infinity_(n=1) b_n < + infinity ==> limits(sum)^infinity_(n=1) a_n < + infinity$.
][]

#consequence(name: "Следствие 2")[
  $forall n in NN #h(6pt) a_n > 0, #h(6pt) b_n > 0, #h(6pt) a_(n+1)/a_n <= b_(n+1)/b_n$ сх-ся, #h(6pt) $limits(sum)^infinity_(n=1) b_n < + infinity ==> limits(sum)^infinity_(n=1) a_n < + infinity$.
][]

#theorem(name: "Теорема (признак сравнения)")[
  $forall n in NN #h(6pt) a_n > 0, #h(6pt) b_n > 0$ и существует конечный предел 
  
  $ lim_(n -> infinity) a_n/b_n = k != 0. $

  Тогда ряды $sum a_n$ и $sum b_n$ ведут себя одинаково.
][
  По следствию 1 из признака мажорации, из сходимости $sum b_n$ вытекает сходимость $sum a_n$. 
  
  $ lim_(n->infinity) b_n/a_n = 1/k $ 
  
  Тогда по этому же следствию из сходимости $sum a_n$ вытекает сходимость $sum b_n$.
]
